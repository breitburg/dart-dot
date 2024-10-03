# Dot Library

Dot is a simple library for parsing and creating [Graphviz](https://graphviz.org/) graphs in the Dot Language. This library allows you to programmatically create and manipulate Graphviz graphs, as well as parse existing Dot Language strings into graph objects.

## Features

- Parse Graphviz Dot Language strings into graph objects.
- Create Graphviz graphs programmatically.
- Convert graph objects back into Dot Language strings.
- Support for various Graphviz elements such as nodes, edges, subgraphs, and attributes.

## Installation

To use Dot in your Dart project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  dot: ^1.0.0
```

Then, run `pub get` to install the package.

## Usage

### Parsing a Graph from a Dot Language String

You can parse a Graphviz graph from a Dot Language string using the `DotParser` class. Here's an example:

```dart
import 'package:dot/dot.dart';

void main() {
  final parser = DotParser();

  final graph = parser.parseGraph('''
    strict graph {
      a -- b
      a -- c
      b -- c [color=blue]
    }
  ''');

  print(graph);
}
```

### Creating a Graph Programmatically

You can also create a Graphviz graph programmatically using the `Graph` class. Here's an example:

```dart
import 'package:dot/dot.dart';

void main() {
  final graph = Graph.create(
    id: 'example',
    type: GraphType.graph,
    strict: true,
    data: {
      'a': ['b', 'c'],
      'b': ['c'],
    },
  );

  print(graph);
}
```

### Working with Nodes and Edges

You can add nodes and edges to a graph using the `NodeStatement` and `EdgeStatement` classes. Here's an example:

```dart
import 'package:dot/dot.dart';

void main() {
  final graph = Graph.fromStatements(
    id: 'example',
    type: GraphType.graph,
    strict: true,
    statements: [
      NodeStatement.create('a'),
      NodeStatement.create('b'),
      NodeStatement.create('c'),
      EdgeStatement.create(from: 'a', to: 'b'),
      EdgeStatement.create(from: 'a', to: 'c'),
      EdgeStatement.create(from: 'b', to: 'c', attributes: {'color': 'blue'}),
    ],
  );

  print(graph);
}
```

### Converting a Graph to Dot Language

You can convert a graph object back into a Dot Language string using the `toString` method. Here's an example:

```dart
import 'package:dot/dot.dart';

void main() {
  final graph = Graph.create(
    id: 'example',
    type: GraphType.graph,
    strict: true,
    data: {
      'a': ['b', 'c'],
      'b': ['c'],
    },
  );

  final dotString = graph.toString();
  print(dotString);
}
```

## Examples

You can find more examples in the `examples/` directory. These examples demonstrate different use cases of the library, such as creating graphs programmatically and parsing graphs from Dot Language strings.

## Contributing

Contributions are welcome! If you find a bug or have a feature request, please open an issue on the [GitHub repository](https://github.com/breitburg/dot).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
