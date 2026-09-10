import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/components/addCard.dart';

class addScreen extends StatefulWidget {
  const addScreen({super.key});

  @override
  State<addScreen> createState() => _addScreenState();
}

class _addScreenState extends State<addScreen> {
  final TextEditingController amountController = TextEditingController();

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool hasAmount = amountController.text.isNotEmpty;

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
              child: AddCard(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {});
                        },
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
                            fontWeight: FontWeight.bold,
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (hasAmount)
                             IconButton(
                                onPressed: () {
                                  amountController.clear();
                                  setState(() {});
                                },
                                icon: Icon(Icons.close, size: 20),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: hasAmount
                                  ? Colors.deepPurple
                                  : Colors.deepPurple.withValues(alpha: 0.1),
                                  foregroundColor: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: hasAmount ? () {
                                  Navigator.pop(context,
                                      int.parse(amountController.text),);
                                } : null,
                                child: Text('Fund'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 2.2,
                        children: [
                          AmountButton(
                            onPress: () {
                              amountController.text = '1000';
                              setState(() {});
                            },
                            amount: '1000',
                          ),
                          AmountButton(
                            onPress: () {
                              amountController.text = '2000';
                              setState(() {});
                            },
                            amount: '2000',
                          ),
                          AmountButton(
                            onPress: () {
                              amountController.text = '5000';
                              setState(() {});
                            },
                            amount: '5000',
                          ),
                          AmountButton(
                            onPress: () {
                              amountController.text = '10000';
                              setState(() {});
                            },
                            amount: '10000',
                          ),
                          AmountButton(
                            onPress: () {
                              amountController.text = '20000';
                              setState(() {});
                            },
                            amount: '20000',
                          ),
                          AmountButton(
                            onPress: () {
                              amountController.text = '50000';
                              setState(() {});
                            },
                            amount: '50000',
                          ),
                        ],
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

class AmountButton extends StatelessWidget {
  final VoidCallback onPress;
  final String amount;
  const AmountButton({required this.onPress, required this.amount});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(amount)),
      ),
    );
  }
}
