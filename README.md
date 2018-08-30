# PlantUML & GitBook

Template that merges together two documentation technologies: [PlantUML](http://plantuml.com) and [GitBook](https://github.com/GitbookIO/gitbook). The intention is to create a version controlled workflow for describing integrations. 

- GitBook for basic book layout (chapters, search)
- PlantUML for describing diagrams in text

The trick is in keeping the diagrams described as text which allows us to use normal Git tools (PRs, diffs) for discussing changes to such graphical entities. Replacing images by newer ones would lose the details on what actually changed. :)


## Requirements

- `npm` version 6
- gnu `make`
- Docker

Installing on macOS, with HomeBrew:

```
$ brew install node@6
$ export PATH="/usr/local/opt/node@6/bin:$PATH"
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

This converts the UML sources to pictures and creates `_book/index.html`. 

To serve the book locally:

```
$ npm run serve
...
Starting server ...
Serving book on http://localhost:4000
```

Open [http://localhost:4000](http://localhost:4000).

Don't try to open the book with `file://` URL since the links don't seem to work, then. Using `npm run serve` also has the added benefits that changes to the source files are automatically reflected in the viewed book (it's more of a "watch").


## Publishing

```
$ npm run dist
```

Updates the latest changes to https://akauppi.github.io/plantuml-book/

Note: This is mostly a sample. You likely lack write access to the original repo.


## Deriving your book

For now, you will need to manually mention the diagrams to convert in the `PICTURES` set of the `Makefile`. Other than that, it's a fairly normal GitBook project.

## Contributing

Check the [Issues](https://github.com/akauppi/plantuml-book/issues) and if your idea isn't there yet, please let it be heard.

Pull Requests, of course, are welcome. :)


## References

- PlantUML 
  - [Web page](http://plantuml.com/)
  - [GitHub repo](https://github.com/plantuml/plantuml)

- [GitBook Toolchain Documentation](https://toolchain.gitbook.com)
