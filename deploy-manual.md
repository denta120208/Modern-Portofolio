# Manual Deployment Guide

Since you're experiencing 404 errors, here's how to manually deploy your portfolio:

## Option 1: Using GitHub Web Interface (Easiest)

1. **Build your project locally:**
   ```bash
   node node_modules/vite/bin/vite.js build
   ```

2. **Go to your GitHub repository:**
   https://github.com/denta120208/Modern-Portofolio

3. **Create a new branch called `gh-pages`:**
   - Click "main" dropdown → "View all branches" → "New branch"
   - Name it `gh-pages`

4. **Upload the contents of your `dist` folder to the `gh-pages` branch:**
   - Switch to `gh-pages` branch
   - Delete all existing files
   - Upload all files from your local `dist` folder

5. **Configure GitHub Pages:**
   - Go to Settings → Pages
   - Source: "Deploy from a branch"
   - Branch: `gh-pages`
   - Folder: `/ (root)`

## Option 2: Fix GitHub Actions (Recommended)

1. **Make sure GitHub Pages is set to use GitHub Actions:**
   - Repository Settings → Pages → Source: "GitHub Actions"

2. **Commit and push your changes:**
   ```bash
   git add .
   git commit -m "Fix GSAP and deployment configuration"
   git push origin main
   ```

3. **Check the Actions tab** in your repository to see if the deployment is running.

## Your site should be available at:
https://denta120208.github.io/Modern-Portofolio/

## Troubleshooting 404 Errors:
- Make sure the base path in vite.config.ts matches your repository name
- Ensure all assets are being built correctly
- Check that GitHub Pages is configured properly
