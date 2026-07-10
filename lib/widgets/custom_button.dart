import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({this.nameButton, this.onpressed,this.icon});
  final String? nameButton;
  final VoidCallback? onpressed;
  final Icon? icon; 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // gradient: LinearGradient(colors: [Colors.blue, Colors.blueAccent]),
        color: Color(0xff62FCD7),
      ),
      child: ElevatedButton.icon(
        onPressed: onpressed,
        icon: icon,
       
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
        ),

      
        label: Text(
          '$nameButton',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
