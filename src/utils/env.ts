/**
 * Get environment variable, prioritize runtime config (window.__ENV__), fallback to build-time config (import.meta.env)
 * @param key Environment variable name
 * @returns Variable value
 */
export const getEnv = (key: string): string => {
  if (window.__ENV__ && window.__ENV__[key]) {
    return window.__ENV__[key]!;
  }

  return import.meta.env[key] || '';
};

/**
 * Get environment variable and parse as JSON object
 * @param key Environment variable name
 * @param fallback Default value
 * @returns Parsed JSON object or default value
 */
export const getEnvJson = <T = any>(key: string, fallback?: T): T | undefined => {
  const value = getEnv(key);
  if (!value) return fallback;

  try {
    return JSON.parse(value);
  } catch {
    console.warn(`Failed to parse JSON for env key: ${key}`);
    return fallback;
  }
};

// Usage example - export commonly used configs
export const API_BASE_URL = getEnv('VITE_API_BASE_URL');
export const SERVICE_BASE_URL = getEnv('VITE_SERVICE_BASE_URL');
export const OTHER_SERVICE_BASE_URL = getEnvJson<Record<string, string>>('VITE_OTHER_SERVICE_BASE_URL');
