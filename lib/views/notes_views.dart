import 'package:flutter/material.dart';
import 'package:note_app/views/add_note_sheet.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return AddNoteSheet();

        });
      },
      
    
     
      child: Icon(Icons.add),
      ),

      body:  NotesViewBody(),
      

    );
  }
}