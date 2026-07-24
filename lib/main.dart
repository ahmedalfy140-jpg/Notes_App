import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/cubits/search_note_cubit.dart/search_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/notes_views.dart';

void main ()async{
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
    Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('note_box');
  

    runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      
      
       providers: [
        
        BlocProvider(create: (context)=> SearchNoteCubit(), ),
         BlocProvider(create: (context)=>NoteCubit()),
       
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark,
          fontFamily: 'Poppins'),
          home: NotesViews(),
      ),
    );
  }
}