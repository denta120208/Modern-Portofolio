import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  base: "/Portfolio-Website/", // Replace with your GitHub repository name
  build: {
    outDir: "dist",
    assetsDir: "assets",
  },
});
