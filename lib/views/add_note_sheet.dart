import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}





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
  String? title , suptitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value){
              title=value;
            },
            
            labelText: 'Title',),
          SizedBox(height: 20,),
          CustomTextField(
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
                print('saver');
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
            nameButton: 'Add',
          ),
      
          
        ],
      ),
    );
  }
}