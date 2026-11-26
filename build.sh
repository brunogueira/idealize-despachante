#!/bin/sh
# Gera a pasta dist/ (só o que vai pro ar) e o idealize-site.zip pra arrastar na Netlify.
set -e
cd "$(dirname "$0")"
rm -rf dist idealize-site.zip
mkdir -p dist/assets
cp index.html dist/
cp assets/logo-mark.svg assets/og.png assets/apple-touch-icon.png dist/assets/
printf 'User-agent: *\nAllow: /\n' > dist/robots.txt
(cd dist && zip -qr ../idealize-site.zip .)
echo "Pronto: dist/ e idealize-site.zip"
