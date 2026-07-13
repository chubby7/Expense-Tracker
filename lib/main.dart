import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';

void main(){
  runApp(ExpenseTracker());
}

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: HomeScreen(),
    );
  }
}
