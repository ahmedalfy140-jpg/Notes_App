import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_votes_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditVotesBody(),
    );
  }
}