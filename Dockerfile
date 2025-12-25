FROM node:22-alpine AS builder

RUN corepack enable && corepack prepare pnpm@latest --activate

WORKDIR /app

RUN pnpm config set store-dir .pnpm-store

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY packages/ ./packages/
COPY src/ ./src/
COPY build/ ./build/
COPY tsconfig.json vite.config.ts uno.config.ts eslint.config.js index.html .env ./

RUN pnpm build

FROM nginx:stable-alpine

RUN apk add --no-cache curl

COPY --from=builder /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -fs -o /dev/null http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]