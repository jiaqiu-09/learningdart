import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Favorite extends StatelessWidget {
  final List<WordPair> data;

  Favorite({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('favorites words'),
        ),
        body: data.isEmpty
            ? const Center(
                child: Text('Data is empty'),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  if (index < data.length) {
                    return ListTile(
                        title: Text(
                      data[index].asPascalCase,
                      style: const TextStyle(fontSize: 17.0),
                    ));
                  } else {
                    return Container();
                  }
                }));
  }
}
