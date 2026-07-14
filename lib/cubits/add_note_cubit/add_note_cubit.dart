


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Future<void> addNote(NoteModel note)async{
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