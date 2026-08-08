import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final IconData icon;
  final String title;
  final String midtitle;
  final String subtitle;
  final String trailing;

  const TransactionList({
    super.key,
    required this.icon,
    required this.title,
    required this.midtitle,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(icon, size: 20),
              ),
            ),
            title: Text(title,style: kNormalTextStyle,),
            subtitle: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(midtitle),
                ),
                SizedBox(width: 15),
                Text(subtitle),
              ],
            ),
            trailing: Text(trailing, style: kNormalTextStyle,),
          ),
        ),
      ],
    );
  }
}
