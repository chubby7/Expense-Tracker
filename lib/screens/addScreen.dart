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
        title: Text(
          'Add Money',
          style: kNormalTextStyle.copyWith(fontSize: 17),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 5),
            child: Text(
              'Enter or select amount',
              style: kNormalTextStyle.copyWith(fontSize: 16),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: addCard(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your budget for the month',
                          hintStyle: kNormalTextStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          prefixText: '₦  ',
                          prefixStyle: kNormalTextStyle.copyWith(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
