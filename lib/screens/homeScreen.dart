import 'package:expense_tracker/components/addButton.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/components/balanceCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Sarah! 👋',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      Text(
                        'Track your expenses wisely',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                  AddButton(onTap: () {}),
                ],
              ),
              SizedBox(height: 15),
              BalanceCard(),
            ],
          ),
        ),
      ),
    );
  }
}


