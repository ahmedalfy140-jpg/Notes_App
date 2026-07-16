import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_notes_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.notes});
final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNotesView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, left: 16, bottom: 24),
      
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              //contentPadding: EdgeInsets.all(0),
              title: Text(
                notes.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                 notes.content,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
             notes.date,
                style: TextStyle(color: Colors.black.withValues(alpha: 0.5),fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
