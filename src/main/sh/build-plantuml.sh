for i in $(find ${GITHUB_WORKSPACE} -name *.puml -printf "%P")
do
  echo "File: $i"
done