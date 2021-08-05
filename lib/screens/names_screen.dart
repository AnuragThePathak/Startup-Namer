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
            //   if(2*i>= _suggestions.length){
            //   if(i+25>_suggestions.length){ //however testing shows this
                //   this not a good way to do this
              _suggestions.addAll(generateWordPairs().take(20));
            }

            return NamesTile(
              word: _suggestions[index],
             // word: _suggestions[i],
            );

            // returning element at index is
            // 100% correct but only when we are return Divider widget at
            // odd/even positions. It is because in this way i is
            // increasing continuously but as we are not returning element
            // from _suggestions only 1 time when i is increased by 2. So
            // even though we were supposed to return a word pair twice we
            // are not. Rather we are saving words from being wasted.
            //E.g For i in the range 0-5, we have index 0-2. Now elements at
            // 0,1,2 are supposed to be returned twice (not actually
            // returned as first if condition is being true for half of i
            // values.) which is saving number of words.
            // but

          },
        ),
      ),
    );
  }
}
