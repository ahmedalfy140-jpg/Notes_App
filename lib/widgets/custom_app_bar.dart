import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon,required this.onpressed});
  final Widget title;
  final IconData icon ;
  final void Function()? onpressed;
 
  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
            Expanded(child: title),
            Spacer(),
            CustomIcon(
              onPressed: onpressed,
              
              icon: icon,),
          ],

    );
  }
}
