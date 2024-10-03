import 'package:graphviz2/graphviz2.dart';

void main() {
  // Create an instance of DotParser
  final parser = DotParser();

  // Define a Dot Language string
  final dotString = '''
    strict graph {
      a -- b
      a -- c
      b -- c [color=blue]
    }
  ''';

  // Parse the Dot Language string into a Graph object
  final graph = parser.parseGraph(dotString);

  // Print the parsed graph
  print(graph);
}
