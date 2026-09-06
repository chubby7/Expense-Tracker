import 'package:expense_tracker/components/addCard.dart';
import 'package:flutter/material.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF2F8),
      body: SafeArea(
          child: Column(
            children: [
              addCard(child: Column(
                children: [

                ],
              ))
            ],
          )),
    );
  }
}
