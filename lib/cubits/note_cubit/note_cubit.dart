import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/note_cubit/note_state.dart';
import 'package:note_app/models/note_model.dart';

class NoteCubit extends Cubit<NoteState> {

   NoteCubit() : super(NoteInitial());

  dynamic fetchAllNotes() {
    emit(NoteLoading());  
    try {
      var notesBox = Hive.box<NoteModel>("note_box");

      List<NoteModel> notes = notesBox.values.toList();

      emit(NoteSuccss(notes));
    } on Exception catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
