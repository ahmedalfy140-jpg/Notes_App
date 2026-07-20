import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/color_list_view.dart';

class EditColoristView extends StatefulWidget {
   EditColoristView({super.key, required this.note});
   NoteModel note ;

  @override
  State<EditColoristView> createState() => _EditColoristViewState();
}

class _EditColoristViewState extends State<EditColoristView> {
   
  late int currentIndex ;
  @override
  void initState(){

    currentIndex=noteColors.indexOf(Color(widget.note.color));
    super.initState();
  

  }

  

  List<Color> noteColors = [
   Color(0xFF264653), // Dark Blue
  Color(0xFF2A9D8F), // Teal
  Color(0xFF8AB17D), // Sage Green
  Color(0xFFE9C46A), // Mustard
  Color(0xFFF4A261), // Soft Orange
  Color(0xFFE76F51), // Coral
  Color(0xFFD62828), // Red
  Color(0xFF6D597A), // Purple
  Color(0xFF457B9D), // Sky Blue
  Color(0xFFA8DADC), 
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 56,
      child: ListView.builder(
        itemCount: noteColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color  = noteColors[index].value;
                setState(() {
                  
                });
               
              },

              child: ColorItem(isActive: currentIndex == index, color: noteColors[index],),
            ),
          );
        },
      ),
    );
  }
}