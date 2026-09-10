import 'package:flutter/material.dart';


class AddCard extends StatelessWidget {

  final Widget child;
  final double? height;
  final double? width;
  final Decoration? decoration;
  const AddCard({
    super.key, required this.child, this.height, this.width, this.decoration
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration?? BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
