
SITE_DIR="${GITHUB_WORKSPACE}/src/main/mkdocs/site"
IMAGES_DIR="${SITE_DIR}/images"

mkdir IMAGES_DIR

for i in $(find ${SITE_DIR} -name *.puml)
do
  echo "File: $i"
  REL_FILE=$(echo $i | sed -e "s|${SITE_DIR}||" | sed -e "s|/.*\.puml||")

  echo "REL: ${REL_FILE}"

  #java -jar /app/plantuml.jar -tsvg -charset utf-8 -r -o ${IMAGES_DIR}${REL_FILE} -I $i

done