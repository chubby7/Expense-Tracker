import 'package:expense_tracker/components/addButton.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/components/balanceCard.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/components/expenses.dart';
import 'package:expense_tracker/components/transactionList.dart';

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
        child: SingleChildScrollView(
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
                          style: kNormalTextStyle.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Track your expenses wisely',
                          style: kNormalTextStyle.copyWith(fontSize: 14),
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
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Spending by category',
                              style: kNormalTextStyle.copyWith(fontSize: 16),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFFECEEF2),
                              ),
                              child: Center(
                                child: Text(
                                  'January, 2025',
                                  style: kNormalTextStyle.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150,
                              height: 150,
                              child: PieChart(
                                PieChartData(
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
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Expenses(
                                    colour: Colors.red,
                                    item: 'Food',
                                    percent: '40%',
                                    price: '\$1150',
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Expenses(
                                    colour: Colors.blue,
                                    item: 'Transport',
                                    percent: '24%',
                                    price: '\$680',
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Expenses(
                                    colour: Colors.green,
                                    item: 'bill',
                                    percent: '18%',
                                    price: '\$550',
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Expenses(
                                    colour: Colors.yellow,
                                    item: 'shopping',
                                    percent: '12%',
                                    price: '\$350',
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Expenses(
                                    colour: Colors.grey,
                                    item: 'others',
                                    percent: '6%',
                                    price: '\$147',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Recent Transactions',
                                style: kNormalTextStyle,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View All',
                                  style: kNormalTextStyle.copyWith(
                                    fontSize: 15,
                                    color: Color(0xFF6B72F7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TransactionList(
                            icon: Icons.fastfood,
                            title: 'Starbucks Coffee',
                            midtitle: 'Food',
                            subtitle: 'Today',
                            trailing: '-\$8.75',
                          ),
                          TransactionList(
                            icon: Icons.emoji_transportation,
                            title: 'Uber Ride',
                            midtitle: 'Transportation',
                            subtitle: 'Today',
                            trailing: '-\$22.75',
                          ),
                          TransactionList(
                            icon: Icons.fastfood,
                            title: 'Whole Food',
                            midtitle: 'Food',
                            subtitle: 'Yesterday',
                            trailing: '-\$153.75',
                          ),
                          TransactionList(
                            icon: Icons.music_note,
                            title: 'Apple Music',
                            midtitle: 'Bills',
                            subtitle: 'Yesterday',
                            trailing: '-\$9.99',
                          ),
                          TransactionList(
                            icon: Icons.fastfood,
                            title: 'Starbucks Coffee',
                            midtitle: 'Food',
                            subtitle: 'Today',
                            trailing: '-\$8.75',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
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
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              CircleAvatar(backgroundColor: Color(0xFFDBFCE7), child: Icon(Icons.trending_up, color: Colors.green,)),
                              SizedBox(height: 10),
                              Text(
                                'VS last Month',
                                style: kNormalTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '+ 8.5%',
                                style: kNormalTextStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
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
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFDBEAFE),
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Days Left',
                                style: kNormalTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '9 Days',
                                style: kNormalTextStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
     //   screens{index}
      ),
      bottomNavigationBar:
      NavigationBar(
          destinations: const [ NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'home'),
          NavigationDestination(icon: Icon(Icons.add), label: 'add'),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Analytics'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
NavigationDestination(icon: Icon(Icons.settings), label: 'settings')
          ]),
    );
  }
}
