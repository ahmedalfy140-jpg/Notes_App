import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

@immutable 
abstract class SearchNoteState {}
class SearchNoteInitial extends SearchNoteState{} 
class SearchNoteLoading extends SearchNoteState{}
class SearchNteSuccess extends SearchNoteState{
  final List<NoteModel> note ;
  SearchNteSuccess(this.note);
}
class SearchNoteFailuar extends SearchNoteState{
  final String errorMessage;
  SearchNoteFailuar(this.errorMessage);
}
