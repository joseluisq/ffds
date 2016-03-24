#!/bin/sh

##                FFDS - Fast Front-End Directory Structure
##                -----------------------------------------
##      Small script for build fast front-end agnostic directory structure.
##                -----------------------------------------

# Directories
assets="app/assets"

mkdir -p \
test \
dist \
${assets}/styles \
${assets}/scripts \
${assets}/images \
${assets}/fonts

# App files
touch \
license.md \
app/index.html \
${assets}/styles/style.css  \
${assets}/scripts/main.js \
${assets}/images/.gitkeep \
${assets}/fonts/.gitkeep \

# Default values for some files

# .gitignore
cat << EOF > .gitignore
node_modules
bower_components
dist
log
*#
*~
*.log
**/.DS_STORE
**/.DS_Store
*.swo
*.swp
*.swn
*.swm
*.pid
*.seed

EOF

# .gitattributes
cat << EOF > .gitattributes
* text=auto

EOF

# .editorconfig
cat << EOF > .editorconfig
# editorconfig.org

root = true

[*]

# Custom indent style settings
indent_style = space
indent_size = 2

# Recommended settings
end_of_line = lf
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true

[*.md]
trim_trailing_whitespace = false

EOF

# .travis.yml
cat << EOF > .travis.yml
sudo: false
language: node_js
node_js:
  - '4'
  - '5'
notifications:
  email: false

EOF

# readme.md
cat << EOF > readme.md
# Title
> Description

EOF

# Show created structure
tree -a
echo

# Git init repository
git init
echo
