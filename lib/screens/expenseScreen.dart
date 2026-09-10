import 'package:expense_tracker/components/addCard.dart';
import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 20),
                  Text(
                    'Add Expense',
                    style: kNormalTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  dashPattern: [8, 5],
                  strokeWidth: 1.5,
                  radius: Radius.circular(15),
                  color: Colors.blue.shade900,
                  padding: EdgeInsets.zero,
                ),
                child: AddCard(
                  height: 300,
                  //  width: double.infinity,
                  // dashedBorder: true,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFEEF2FF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt),
                        ),
                        Text(
                          'Scan Receipt',
                          style: kNormalTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text('Use AI to automatically extract expense details', ),
                        ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blue,
                              minimumSize: Size(20, 50)
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.camera_alt),
                                  Text('Scan Receipt')
                                ],
                              ),
                            ))
                      ],
                    ),
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
