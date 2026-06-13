import type { Config } from 'tailwindcss';

const config: Config = {
  content: [
    './app/**/*.{ts,tsx}',
    './components/**/*.{ts,tsx}',
  ],
  theme: {
    extend: {
      colors: {
        // Monochrome brand palette (black & white).
        ink: '#141414',
        paper: '#ffffff',
        // Kept for backward-compat; resolves to the brand black so any
        // legacy `accent` utility renders monochrome.
        accent: '#141414',
        // Electric / cyberpunk accents.
        pink: '#ff00ff', // magenta
        neon: '#e5ff00', // neon yellow
        acid: '#9eff00', // neon acid green
        cyan: '#00f0ff', // glitch cyan
      },
      fontFamily: {
        sans: ['var(--font-sans)', 'system-ui', 'sans-serif'],
        display: ['var(--font-display)', 'var(--font-sans)', 'system-ui', 'sans-serif'],
      },
      maxWidth: {
        page: '1500px',
      },
      letterspacing: {},
    },
  },
  plugins: [],
};

export default config;
