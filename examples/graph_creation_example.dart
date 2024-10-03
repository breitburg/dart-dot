import 'package:dot/dot.dart';

void main() {
  // Create a graph from a list of statements
  final graphFromStatements = Graph.fromStatements(
    id: 'example1',
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

  print('Graph created from statements:');
  print(graphFromStatements);

  // Create a graph from a mapping of node to connected nodes
  final graphFromMapping = Graph.create(
    id: 'example2',
    type: GraphType.graph,
    strict: true,
    data: {
      'a': ['b', 'c'],
      'b': ['c'],
    },
  );

  print('Graph created from mapping:');
  print(graphFromMapping);
}
