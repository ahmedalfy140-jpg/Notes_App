


import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = Color(0xFF264653);
  Future<void> addNote(NoteModel note)async{
    note.color=color.value;
    emit(AddNoteLoading());
     try {
  var notesBox = Hive.box<NoteModel>("note_box");
  
   await notesBox.add(note);  
   emit(AddNoteSuccess());
} on Exception catch (e) {
 emit( AddNoteFailure(e.toString()));
}

  }

}