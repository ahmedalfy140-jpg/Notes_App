import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (BuildContext context, int index) {  
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: CustomNoteItem(),
      );
    },);
  }
}