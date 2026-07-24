import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/cubits/search_note_cubit.dart/search_note_cubit.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
     super.initState();
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();

    BlocProvider.of<SearchNoteCubit>(context).fetchAllNotesSearch();
   
  }

  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomAppBar(
            title: isSearching
                ? TextField(
                    controller: searchController,
                    autofocus: true,
                    onChanged: (value) {
                      context.read<SearchNoteCubit>().searchNotes(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'search...',
                      border: InputBorder.none,
                    ),
                  )
                : Text('notes', style: TextStyle(fontSize: 28)),

            icon: isSearching ? Icons.close : Icons.search,

            onpressed: () {
              setState(() {
                isSearching = !isSearching;
                if (!isSearching) {
                  searchController.clear();
                  context.read<SearchNoteCubit>().searchNotes('');
                }
              });
            },
          ),

          SizedBox(height: 20),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
