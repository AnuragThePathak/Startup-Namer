import 'package:flutter/material.dart';
import 'package:startup_namer/screens/names_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Startup Namer",
      home: NamesScreen(),
    );
  }
}
