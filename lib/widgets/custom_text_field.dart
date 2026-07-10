import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.labelText , this.maxLines});
final int? maxLines ;
final String? labelText;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: Color(0xff62FCD7),
                  keyboardType: TextInputType.text,
                  onChanged: (data) {
                   
                  },
                  maxLines:maxLines ,

                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color(0xff62FCD7)),
                    labelText: labelText,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color:Color(0xff62FCD7))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.white)
                    )
                  ),
                );
               
  }
}