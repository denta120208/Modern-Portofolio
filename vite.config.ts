import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  base: "/Modern-Portofolio/", // Correct GitHub repository name
  build: {
    outDir: "dist",
    assetsDir: "assets",
  },
});
