import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 24, backgroundColor: color),
          )
        : CircleAvatar(radius: 28, backgroundColor:color);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

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
    return SizedBox(
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
                setState(() {});
              },

              child: ColorItem(isActive: currentIndex == index, color: noteColors[index],),
            ),
          );
        },
      ),
    );
  }
}
