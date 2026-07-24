// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:note_app/cubits/note_cubit/note_cubit.dart';
// import 'package:note_app/cubits/note_cubit/note_state.dart';
// import 'package:note_app/models/note_model.dart';
// import 'package:note_app/widgets/custom_note_item.dart';

// class NotesListView extends StatelessWidget {
//   const NotesListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NoteCubit,NoteState>(
//       builder: (BuildContext context, state) {
//         List<NoteModel>notes =BlocProvider.of<NoteCubit>(context).notes ?? [];
//         return ListView.builder(
//           itemCount: notes.length ,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: CustomNoteItem(notes: notes[index],),
//             );
//           },
//         );
//       },
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/search_note_cubit.dart/search_note_cubit.dart';
import 'package:note_app/cubits/search_note_cubit.dart/search_note_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_note_item.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<SearchNoteCubit, SearchNoteState>(
      builder: (context, state) {

        List<NoteModel> note = [];

        if(state is SearchNteSuccess){
          note = state.note;
         
        }


        return ListView.builder(
          itemCount: note.length,
          itemBuilder: (context,index){

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomNoteItem(
                notes: note[index],
              ),
            );

          },
        );
      },
    );
  }
}



