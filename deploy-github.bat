@echo off
echo ========================================
echo    DEPLOY PORTFOLIO KE GITHUB PAGES
echo ========================================

echo.
echo 1. Building project...
node node_modules/vite/bin/vite.js build

echo.
echo 2. Membuat branch gh-pages...
git checkout -b gh-pages 2>nul || git checkout gh-pages

echo.
echo 3. Menghapus file lama...
git rm -rf . --ignore-unmatch

echo.
echo 4. Menyalin file dari dist...
xcopy dist\* . /E /Y /Q

echo.
echo 5. Menambahkan .nojekyll...
echo. > .nojekyll

echo.
echo 6. Commit dan push...
git add .
git commit -m "Deploy portfolio to GitHub Pages"
git push origin gh-pages --force

echo.
echo 7. Kembali ke branch main...
git checkout main

echo.
echo ========================================
echo    DEPLOYMENT SELESAI!
echo    Website: https://denta120208.github.io/Modern-Portofolio/
echo ========================================
pause
