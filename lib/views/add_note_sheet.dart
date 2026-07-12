import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/views/add_note_form.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit,AddNoteState>(
          listener: (BuildContext context, state) {
            if (state is AddNoteFailure){
              print('faild${state.errorMessage}');
            }
            if(state is AddNoteSuccess){
              Navigator.pop(context);
            }
          },
          builder: (BuildContext context, state) {
          return ModalProgressHUD(
            inAsyncCall: State is AddNoteLoading ? true :false,
            child: AddNoteForm());},
        ),
      ),
    );
  }
}
