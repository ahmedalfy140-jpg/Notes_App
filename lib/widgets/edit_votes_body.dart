import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditVotesBody extends StatelessWidget {
  const EditVotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 20,),
          CustomTextField(labelText: 'title',),
          SizedBox(height: 10,),
          CustomTextField(
            labelText: "content",
            maxLines: 5,),
      
        ],
      ),
    );
  }
}