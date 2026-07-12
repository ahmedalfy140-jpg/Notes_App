


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Future<void> addNote(NoteModel note)async{
    emit(AddNoteInitial());
     try {
  var notesBox = Hive.box<NoteModel>("note_box");
  emit(AddNoteSuccess());
   await notesBox.add(note);  
} on Exception catch (e) {
  AddNoteFailure(e.toString());
}

  }

}