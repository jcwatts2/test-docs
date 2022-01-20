SITE_DIR="${GITHUB_WORKSPACE}/src/main/mkdocs/site"
IMAGES_DIR="${SITE_DIR}/images"

mkdir IMAGES_DIR

for i in $(find ${SITE_DIR} -name *.puml)
do
  REL_DIR=$(echo $i | sed -e "s|${SITE_DIR}||" -e "s|\/[A-Za-z1-9-]\+\.puml$||")
  echo "Generating PlantUML ${i} to directory ${IMAGES_DIR}${REL_DIR}"
  java -jar /app/plantuml.jar -tsvg -charset utf-8 -r -o ${IMAGES_DIR}${REL_DIR} $i
done