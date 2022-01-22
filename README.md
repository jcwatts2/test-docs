# Test Documentation Project

This is a project to try out using [Mkdocs](https://www.mkdocs.org/), [PlantUML](https://plantuml.com/), and [Github Actions](https://docs.github.com/en/actions) to build a
[Github Pages Site](https://pages.github.com/)

## Running

To run locally, you'll need a Docker server running on your local machine (or access to a Docker server).

There is a gradle script that will start up two Docker instances: Mkdocs serve
instance and PlantUML diagram server. The Mkdocs serve instance uses the PlantUML server to create SVG's from PlantUML files.


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
the [./.github/workflows/publish-docs-on-master.yml](./.github/workflows/publish-docs-on-master.yml) file. On pushes to the main branch, it

1. Checks out the source from main
2. Creates SVG files from all PlantUML files
3. Build the mkdocs
4. Publishes the site to the gh-pages branch of this repository. 

> The gh-pages branch is where Github is configured to read the content of this
> Project Github page (see [Github Pages Configuration](https://github.com/jcwatts2/test-docs/settings/pages)).


## Misc

### Docker tips

* `docker ps` - List all running Docker containers
* `docker ps -a` - List all Docker containers running or shut down
* `docker kill $(docker ps -a -q)` - Will stop all running Docker containers
* `docker container rm $(docker ps -a -q) - Will remove all Docker containers
