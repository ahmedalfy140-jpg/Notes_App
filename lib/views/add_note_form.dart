

import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formkey=GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
   final titlecontroller = TextEditingController();
   final supTitlecontroller = TextEditingController();
  String? title , suptitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            controller: titlecontroller,
            onSaved: (value){
              title=value;
            },
            
            labelText: 'Title',),
          SizedBox(height: 20,),
          CustomTextField(
            controller: supTitlecontroller,
            onSaved: (value){
              suptitle=value;
            },
            labelText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 80,),
          CustomButton(
            onpressed: () {
              if (formkey.currentState!.validate()){
                formkey.currentState!.save();
                
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
              titlecontroller.clear();
              supTitlecontroller.clear();
            },
            nameButton: 'Add',
          ),
      
          
        ],
      ),
    );
  }
}