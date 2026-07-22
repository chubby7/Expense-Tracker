import 'package:expense_tracker/components/addButton.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/components/balanceCard.dart';
import 'package:fl_chart/fl_chart.dart';

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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                      )
                    ],
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
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: PieChart(PieChartData(
                              centerSpaceRadius: 35,
                              sectionsSpace: 2,
                              sections: [
                                PieChartSectionData(
                                  value: 40,
                                  color: Colors.red,
                                  radius: 25,
                                ),
                                PieChartSectionData(
                                  value: 25,
                                  color: Colors.blue,
                                  radius: 25,
                                ),
                                PieChartSectionData(
                                  value: 20,
                                  color: Colors.green,
                                  radius: 25,
                                ),
                                PieChartSectionData(
                                  value: 15,
                                  color: Colors.orange,
                                  radius: 25,
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
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


