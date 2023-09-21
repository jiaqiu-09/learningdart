import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final entries = <WordPair>[];

  Widget _buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          if (index.isOdd) {
            return Divider();
          }
          final _idx = index ~/ 2;
          if (_idx >= entries.length) {
            entries.addAll(generateWordPairs().take(10));
          }
          return ListTile(
            title: Text(
              entries[_idx].asPascalCase,
              style: TextStyle(fontSize: 18.0),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('English Words')), body: _buildList());
  }
}
