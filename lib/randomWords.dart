import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final entries = <WordPair>[];
  final savedSet = Set<WordPair>();

  Widget _buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          if (index.isOdd) {
            return const Divider();
          }
          final idx = index ~/ 2;
          if (idx >= entries.length) {
            entries.addAll(generateWordPairs().take(10));
          }
          final alreadySaved = savedSet.contains(entries[idx]);
          return ListTile(
            title: Text(
              entries[idx].asPascalCase,
              style: TextStyle(fontSize: 18.0),
            ),
            trailing: Icon(
              alreadySaved ? Icons.favorite : Icons.favorite_border,
              color: alreadySaved ? Colors.red : null,
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
