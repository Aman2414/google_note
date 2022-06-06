import 'package:flutter/material.dart';
import 'package:google_note/screens/notes_screen.dart';
import 'package:google_note/widgets/custom_icon_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: NotesScreen(),
    );
  }
}