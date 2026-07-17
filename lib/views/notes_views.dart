import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/views/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: Color(0xff62FCD7),
        
        onPressed: (){
          
        
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(24)),
          context: context, builder: (context){
          return AddNoteSheet();
    
        });
      },
      
    
     
      child: Icon(Icons.add),
      ),
    
      body:  NotesViewBody(),
      
    
    );
  }
}