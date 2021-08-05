import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:startup_namer/widgets/names_tile.dart';

class NamesScreen extends StatefulWidget {
  const NamesScreen({Key? key}) : super(key: key);

  @override
  _NamesScreenState createState() => _NamesScreenState();
}

class _NamesScreenState extends State<NamesScreen> {
  final _suggestions = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suggested Names"),
      ),
      body: Material(
        child: ListView.builder(
          itemBuilder: (context, i) {
            if (i.isOdd) {
              return const Divider();
            }
            final index = i ~/ 2;
            if (index >= _suggestions.length) {
              // if(2*i<_suggestions.length){
              _suggestions.addAll(generateWordPairs().take(20));
            }

            return NamesTile(
              word: _suggestions[index],
            //  word: _suggestions[i],
            );
          },
        ),
      ),
    );
  }
}
