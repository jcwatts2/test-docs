
SITE_DIR="${GITHUB_WORKSPACE}/src/min/mkdocs/site"
IMAGES_DIR="${SITE_DIR}/images"

for i in $(find ${SITE_DIR} -name *.puml)
do
  echo "File: $i"
done