
import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState{}
class NoteLoading extends NoteState{}
class NoteSuccss extends NoteState{
  final List<NoteModel> notes ;

  NoteSuccss( this.notes);
}
class NoteFailure extends NoteState{
  final String errorMessage ;

  NoteFailure( this.errorMessage);
}