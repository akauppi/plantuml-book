# Integration specimen

Experiment on creating UML diagrams (with the intention of describing integrations), from version controlled source. 

## Background & motivation

In summer 2018, some UML diagrams are used heavily within Stockmann to describe integrations. 

- Sequence diagrams within Confluence pages, using [www.websequencediagrams.com](https://www.websequencediagrams.com)
- [Draw.io](https://www.draw.io) diagrams embedded within Confluence pages

The problem with these is that they don't provide a "diff", and that in turn leads to such diagrams being incompatible with a pull request -style workflow (where changes are suggested, discussed, and approved only once they go through multiple parties).

Even if there was a way to see the changes introduced by one change to a diagram, the visual tools don't seem to provide "diff"s across arbitrary time points.

With programming languages, we use such diffs all the time. By describing the UML diagrams as text, we can utilize the same workflows that we're using with code logic, also for visual presentations. This should lead to a win-win, without compromising something that's essential for managing change in a complex environment.


## Requirements

- `npm` version 6
- gnu `make`
- Docker

Installing on macOS, with HomeBrew:

```
$ brew install node@6
$ export PATH="/usr/local/opt/node@6/bin:$PATH"
```

```
$ docker pull 
```

### Why run via Docker?

[PlantUML](http://plantuml.com) is used via a Docker image ([link](https://hub.docker.com/r/think/plantuml/)). This is easier (no separate installs of graphviz and a Java JAR), but most importantly safer. Running the binary does not have visibility to our host system, so any malicious code that could be injected (i.e. we don't really trust the PlantUML ecosystem) is sandboxed.


## Building

To get the necessary build tools installed:

```
$ npm install
```

Build the book:

```
$ npm run build
```

This creates `_book/index.html`. To serve the book locally:

```
$ npm run serve
...
Starting server ...
Serving book on http://localhost:4000
```

Open [http://localhost:4000](http://localhost:4000).

|Note|
|---|
|Unfortunately, opening the book with `file://` URL does not allow the links to work. This is likely a GitBook bug.|



## Publishing

<font color=red>tbd.</font>

<!-- tbd.
```
$ npm run dist
```

Updates the latest changes to ...tbd... .

-->

## References

- PlantUML 
  - [Web page](http://plantuml.com/)
  - [GitHub repo](https://github.com/plantuml/plantuml)
