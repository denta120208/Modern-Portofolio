@echo off
echo Building the project...
node node_modules/typescript/bin/tsc -b
node node_modules/vite/bin/vite.js build

echo Creating gh-pages branch...
git checkout --orphan gh-pages
git rm -rf .

echo Copying dist files to root...
xcopy dist\* . /E /Y

echo Adding .nojekyll file...
echo. > .nojekyll

echo Committing and pushing...
git add .
git commit -m "Deploy to GitHub Pages"
git push origin gh-pages --force

echo Switching back to main...
git checkout main

echo Deployment complete! Your site should be available at:
echo https://denta120208.github.io/Modern-Portofolio/
pause
