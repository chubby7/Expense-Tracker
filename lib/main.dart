import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/expenses/expense_screen.dart';

void main(){
  runApp(ExpenseTracker());
}

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final PageController pageController = PageController();
  int currentIndex = 0;
  double budget = 0;
  double totalSpent = 0;
  double get remaining => budget - totalSpent;
  double get remainingPercentage => budget == 0 ? 0 : remaining/budget;
  double get usedPercentage => budget == 0 ? 0 : totalSpent/budget;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
          HomeScreen(
            budget: budget,
            totalSpent: totalSpent,
            remaining: remaining,
            remainingPercentage: remainingPercentage,
            usedPercentage: usedPercentage,
            onAmountAdded: (amount){
              setState(() {
                budget += amount;
              });
            },
          ),
          Expense(onExpenseScreen: (amount){
            setState(() {
              totalSpent += amount;
              currentIndex = 0;
            });
            pageController.animateToPage(0, duration: const
                Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          },),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index){
          setState(() {
            currentIndex = index;
          });
          pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeInOut,);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'home',
          ),
          NavigationDestination(icon: Icon(Icons.add), label: 'Expenses'),
          NavigationDestination(
            icon: Icon(Icons.bar_chart),
            label: 'Analytics',
          ),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'settings'),
        ],
      ),
    );
  }
}

