


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/search_note_cubit.dart/search_note_state.dart';
import 'package:note_app/models/note_model.dart';

class NoteCubit extends Cubit<SearchNoteState> {

  NoteCubit() : super(SearchNoteInitial());

  List<NoteModel> allNotes = [];

  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>('note_box');

    allNotes = notesBox.values.toList();

    emit(SearchNteSuccess(allNotes));
  }


  void searchNotes(String query) {

    if (query.isEmpty) {
      emit(SearchNteSuccess(allNotes));
      return;
    }


    List<NoteModel> result = allNotes.where((note) {

      return note.title
          .toLowerCase()
          .contains(query.toLowerCase());

    }).toList();


    emit(SearchNteSuccess(result));
  }
}