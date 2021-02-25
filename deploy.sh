#!/bin/sh

hugo
sed -i -e 's$official/official$official$g' docs/index.html
rm docs/index.html-e
sed -i -e 's$official/official$official$g' docs/posts/index.html
rm docs/posts/index.html-e
sed -i -e 's$official/official$official$g' docs/posts/blog001/index.html
rm docs/posts/blog001/index.html-e
sed -i -e 's$official/official$official$g' docs/posts/blog002/index.html
rm docs/posts/blog002/index.html-e
git add -A
git commit -m "rebuilding site $(date)"
git push -u origin master