import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'widget/RandomWords.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup Name Generator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Startup Name Generator'),
        ),
        body: const Center(
          // child: Text('Hello World'),
          // child: Text(wordPair.asPascalCase),
          child: RandomWords(),
        ),
      ),
    );
  }
}
