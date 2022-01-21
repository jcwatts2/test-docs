SITE_DIR="${GITHUB_WORKSPACE}/src/main/mkdocs/docs"
DOCS_DIR="${GITHUB_WORKSPACE}/src/main/mkdocs/docs"

mkdir IMAGES_DIR

for i in $(find ${DOCS_DIR} -name *.puml)
do
  REL_DIR=$(echo $i | sed -e "s|${DOCS_DIR}||" -e "s|\/[A-Za-z1-9-]\+\.puml$||")
  IMG_DIR="${SITE_DIR}${REL_DIR}"
  echo "Generating PlantUML ${i} to directory ${IMG_DIR}"
  java -jar /app/plantuml.jar -v -tsvg -charset utf-8 -r -o ${IMG_DIR} $i
done