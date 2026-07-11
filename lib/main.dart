import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/views/notes_views.dart';

void main ()async{
  await Hive.initFlutter();
  await Hive.openBox('note_box');
    runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,
        fontFamily: 'Poppins'),
        home: NotesViews(),
    );
  }
}