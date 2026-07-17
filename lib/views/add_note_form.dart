

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/models/note_model.dart';
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
            
            hintText: 'Title',),
          SizedBox(height: 20,),
          CustomTextField(
            controller: supTitlecontroller,
            onSaved: (value){
              suptitle=value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 75,),
          BlocBuilder<AddNoteCubit,AddNoteState>(
            builder: (context,State){

            return CustomButton(
              isLoading:State is AddNoteLoading? true :false ,
              onpressed: () {
                if (formkey.currentState!.validate()){
                  formkey.currentState!.save();
                  var currentDateFormated = DateFormat.yMMMEd().format(DateTime.now());
                  var notemodel=NoteModel(title: title!, content:suptitle!, 
                  date: currentDateFormated, color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                  
                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {
            
                  });
                }
                titlecontroller.clear();
                supTitlecontroller.clear();
              },
                     
            );}
          ),
      
          
        ],
      ),
    );
  }
}