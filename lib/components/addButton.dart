import 'package:flutter/material.dart';

class Addbutton extends StatelessWidget {
  final VoidCallback onTap;
  const Addbutton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xFF4F39F6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Icon(Icons.add, size: 25, fontWeight: FontWeight.bold, color: Color(0xFFE0DCFD),),
        ),
      ),
    );
  }
}
