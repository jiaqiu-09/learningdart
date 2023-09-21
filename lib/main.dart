import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My App',
            ),
          ),
          body: Center(child: Text('Hello world')),
        ));
  }
}
