
import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState{}
class NoteSuccsess extends NoteState{}