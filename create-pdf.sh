#!/usr/bin/env bash
echo "Generating PDF document from markdown"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

echo "Generating PDF from markdown"
bash "$SCRIPT_DIR/spec-publisher/utils/create-venv.sh"


if [ ! -d "$SCRIPT_DIR/docs/pdf" ]
then
  echo " - creating docs/pdf directory"
  mkdir -p "$SCRIPT_DIR/docs/pdf/"
fi

command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  # shellcheck source=/tmp/.venv-markdown/bin/activate
  source "$tmpdir/.venv-markdown/bin/activate"
}

echo " - MARKDOWN-PP: Preparing PDF markdown"
markdown-pp PDF.md -o docs/eark-cits-geospatial-pdf.md -e tableofcontents
sed -i 's%fig_2_csip_scope.svg%fig_2_csip_scope.png%' docs/eark-cits-geospatial-pdf.md

cp -Rf specification/media docs/
cp -Rf spec-publisher/res/md/figs docs/

cd docs || exit

echo " - PANDOC: Generating Preface from markdown"
pandoc  --from gfm \
        --to latex \
        --metadata-file "../spec-publisher/pandoc/metadata.yaml" \
        "../spec-publisher/res/md/common-intro.md" \
        -o "./preface.tex"
sed -i 's%section{%section*{%' ./preface.tex

echo " - PANDOC: Generating PDF document from markdown and Tex sources"
pandoc  --from markdown \
        --template ../spec-publisher/pandoc/templates/eisvogel.latex \
        --listings \
        --table-of-contents \
        --metadata-file "../spec-publisher/pandoc/metadata.yaml" \
        --include-before-body "./preface.tex" \
        --number-sections \
        eark-cits-geospatial-pdf.md \
        -o "./pdf/eark-cits-geospatial.pdf"

rm eark-cits-geospatial-pdf.md preface.tex

echo " - Finished"
