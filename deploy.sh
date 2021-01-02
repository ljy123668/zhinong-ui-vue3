rm -rf dist  &&
npm run build  &&
cd dist  &&
git init &&
git add .  &&
git commit -m "update"  &&
git branch -M master  &&
git remote add origin git@github.com:ljy123668/z-ui-website.git  &&
git push -f -u origin master  &&
cd -
echo https://ljy123668.github.io/z-ui-website/index.html