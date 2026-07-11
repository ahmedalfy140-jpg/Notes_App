import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
       
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Center(child: IconButton(onPressed: (){}, icon: Icon(icon,size: 28,))),
    );
  }
}