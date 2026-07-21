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
      backgroundColor: Color(0xFFEEF2F8),
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
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  AddButton(onTap: () {}),
                ],
              ),
              SizedBox(height: 15),
              BalanceCard(),
              SizedBox(height: 15),
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Spending by category', style: TextStyle(fontSize: 15),),
                       Container(
                         padding: EdgeInsets.symmetric(
                           horizontal: 16,
                             vertical: 6),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                           color: Color(0xFFECEEF2),
                         ),
                         child: Center(
                           child: Text('January, 2025', style:  TextStyle(fontSize: 14, color: Colors.black),),
                         ),
                       ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


