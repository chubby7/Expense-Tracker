import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/components/addCard.dart';

class addScreen extends StatefulWidget {
  const addScreen({super.key});

  @override
  State<addScreen> createState() => _addScreenState();
}

class _addScreenState extends State<addScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF2F8),
      appBar: AppBar(
        title: Text('Add Money', style: kNormalTextStyle,),
      ),
      body: Column(
        children: [
          Expanded(child: addCard(
              height: 300,
              child: Column(
            children: [
              TextField()
            ],
          )))
        ],
      ),
    );
  }
}
