import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText , this.maxLines,this.onSaved,this.controller, this.onChanged});
final int? maxLines ;
final String? hintText;
final void Function(String?)? onSaved;
final TextEditingController? controller;
final void Function(String)? onChanged ;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onChanged: onChanged,
      controller: controller,
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
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color:Color(0xff62FCD7))
                    ),
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