import 'package:flutter/material.dart';
import 'package:expense_tracker/constants.dart';

class Expenses extends StatelessWidget {
  final String item;
  final String price;
  final String percent;
  final Color colour;

  const Expenses({
    super.key,
    required this.colour,
    required this.item,
    required this.percent,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: colour, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          item,
          style: kNormalTextStyle.copyWith(fontSize: 14, color: Colors.black87),
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              price,
              style: kNormalTextStyle.copyWith(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
            Text(
              percent,
              style: kNormalTextStyle.copyWith(
                fontSize: 13,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
