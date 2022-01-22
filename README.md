# Test Documentation Project

Just a little project to get Mkdocs with PlantUML and Github Actions to build a
Github Pages Site

## Running

To run locally, you'll need a running Docker server (or access to one).

There is a gradle script that will start up two Docker instances: Mkdocs serve
instance and a PlantUML diagram server (take PlantUML and spits out an SVG).
The Mkdocs serve instance uses the PlantUML server.

Anyway, to run the instances:

```
    ./gradlew composeUp
```

Once the Dockers are started, use a browser to got to [http://localhost:8100](http://localhost:8100)

Make changes to the PlantUML diagrams or Mkdocs files and see them refreshed.


To shut it off
```
    ./gradlew composeDown
```


