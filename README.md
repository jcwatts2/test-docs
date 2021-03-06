# Test Documentation Project

This is a project to try out using [Mkdocs](https://www.mkdocs.org/), [PlantUML](https://plantuml.com/), and [Github Actions](https://docs.github.com/en/actions) to build a
[Github Pages Site](https://pages.github.com/), which exists [here](https://jcwatts2.github.io/test-docs/).

## Local Dev Setup

To edit the pages and diagrams locally and preview the results as you work, the project uses [Gradle]() to 
launch a couple of Docker containers:  Mkdocs serve instance and PlantUML diagram server. 
The Mkdocs serve instance uses the PlantUML server to create SVG's from PlantUML files. The following diagrams shows how this works:

### Starting

```
    ./gradlew composeUp
```

Once the Dockers are started, use a browser to got to [http://localhost:8100](http://localhost:8100)

Make changes to the PlantUML diagrams or Mkdocs files and see them refreshed.


### Stopping 
```
    ./gradlew composeDown
```

## Publishing to Docker Pages

This project comes with a [Github Workflow](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions) defined in
the [./.github/workflows/publish-docs-on-master.yml](./.github/workflows/publish-docs-on-master.yml) file. On pushes to the main branch, 
it does the following:

1. Checks out the source from main
2. Creates SVG files from all PlantUML files
3. Build the mkdocs
4. Publishes the site to the gh-pages branch of this repository. 

> The gh-pages branch is where Github is configured to read the content of this
> Project Github page (see [Github Pages Configuration](https://github.com/jcwatts2/test-docs/settings/pages)).


## Misc

### Docker tips

* `docker ps` - lists all running Docker containers
* `docker ps -a` - lists all Docker containers running or shut down
* `docker kill $(docker ps -a -q)` - stops all running Docker containers
* `docker container rm $(docker ps -a -q)` - removes all Docker containers
* `docker logs -f [container name]` - tails the container log
