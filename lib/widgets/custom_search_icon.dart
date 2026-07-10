import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
       
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 28,))),
    );
  }
}