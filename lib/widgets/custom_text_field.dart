import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.labelText , this.maxLines,this.onSaved});
final int? maxLines ;
final String? labelText;
final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'field is required';
        }else{
          return null;
        }
      },
      cursorColor: Color(0xff62FCD7),
                  keyboardType: TextInputType.text,
                 
                  maxLines:maxLines ,

                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color(0xff62FCD7)),
                    labelText: labelText,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color:Color(0xff62FCD7))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.white)
                    )
                  ),
                );
               
  }
}