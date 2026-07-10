import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(labelText: 'Title',),
            SizedBox(height: 20,),
            CustomTextField(
              labelText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 80,),
            customButton(
              nameButton: 'Add',
            ),
        
            
          ],
        ),
      ),
    );
  }
}