import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class NamesTile extends StatelessWidget {
  final WordPair word;
  const NamesTile({Key? key,required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        word.asPascalCase,
      ),
    );
  }
}
