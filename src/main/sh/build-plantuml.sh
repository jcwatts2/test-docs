SITE_DIR="${RUNNER_WORKSPACE}/src/main/mkdocs/site"
DOCS_DIR="${GITHUB_WORKSPACE}/src/main/mkdocs/docs"

mkdir IMAGES_DIR

for i in $(find ${DOCS_DIR} -name *.puml)
do
  REL_DIR=$(echo $i | sed -e "s|${DOCS_DIR}||" -e "s|\/[A-Za-z1-9-]\+\.puml$||")
  echo "Generating PlantUML ${i} to directory ${SITE_DIR}${REL_DIR}"
  java -jar /app/plantuml.jar -tsvg -charset utf-8 -r -o ${SITE_DIR} $i
done