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
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFEEF2FF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AddCard(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFE0E7FF),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.photo_camera,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          'Scan Receipt',
                          style: kNormalTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),

                        Text('Use AI to automatically extract expense details'),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,
                            side: BorderSide(color: Colors.blue, width: 1.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            minimumSize: Size(20, 50),
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt),
                              SizedBox(width: 8),
                              Text('Scan Receipt'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              AddCard(
                height: 150,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amount*',
                        style: kNormalTextStyle.copyWith(fontSize: 20),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('₦', style: kNormalTextStyle.copyWith(
                              fontSize: 20,
                              color: Colors.black,
                            ),),
                          ),
                          hintText: '0.00',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                            )
                          ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.5
                              )
                            ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5
                            ),
                          )
                        ),
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
