import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditVotesBody extends StatefulWidget {
  const EditVotesBody({super.key, required this.note});
final NoteModel note ;

  @override
  State<EditVotesBody> createState() => _EditVotesBodyState();
}

class _EditVotesBodyState extends State<EditVotesBody> {
   String? title ,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppBar(
            onpressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);

            },
            
            title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 20,),
          CustomTextField(
            onChanged: (value){
              title=value;
            },
            
            hintText: widget.note.title,),
          SizedBox(height: 10,),
          CustomTextField(
            onChanged: (value) {
              content=value;
              
            },
            hintText: widget.note.content,
            maxLines: 5,),
      
        ],
      ),
    );
  }
}