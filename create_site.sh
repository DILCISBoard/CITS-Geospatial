#!/usr/bin/env bash
echo "Generating GitHub pages site from markdown"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

echo " - Cleaning up site directory and copying spec-publisher site..."
git clean -f site/ specification/
cp -rf spec-publisher/site/* site/

echo " - Generating main site page..."

bash "$SCRIPT_DIR/spec-publisher/scripts/create-venv.sh"

command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  source "$tmpdir/.venv-markdown/bin/activate"
}

cd doc/site || exit

echo " - MARKDOWN-PP: generating site page with TOC..."
markdown-pp body.md -o body_toc.md

echo " - MARKDOWN-PP: generating site index.md..."
markdown-pp SITE.md -o "$SCRIPT_DIR"/site/index.md

cd "$SCRIPT_DIR" || exit

echo " - copying files to site directory..."
cp -rf spec-publisher/res/md/figs site/
# Copy remaining collaterel
cp -rf profile site/
cp -rf archived site/archive
cp -rf specification/media site/

if [ -d site/pdf ]
then
  echo " - Removing old site PDF directory"
  rm -rf site/pdf
fi
mkdir site/pdf
cp -rf doc/pdf/eark-geo.pdf site/pdf/

if [ -d _site ]
then
  echo " - Removing old site directory"
  rm -rf _site
fi
mkdir _site
docker run --rm -v "$PWD"/site:/usr/src/app -v "$PWD"/_site:/_site starefossen/github-pages jekyll build -d /_site
