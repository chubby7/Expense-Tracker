import 'package:expense_tracker/components/addCard.dart';
import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  String? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          Text(
                            'Use AI to automatically extract expense details',
                          ),
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
                SizedBox(height: 15),
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
                            filled: true,
                            fillColor: Color(0xFFF9FAFB),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '₦',
                                style: kNormalTextStyle.copyWith(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            hintText: '0.00',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                AddCard(
                  height: 300,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description*',
                          style: kNormalTextStyle.copyWith(fontSize: 20),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF9FAFB),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),

                        AddCard(
                          decoration: BoxDecoration(
                            color: Color(0xFFEFF6FF),
                            borderRadius: BorderRadius.circular(15),
                            border: BoxBorder.all(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                          ),
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade50,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Icon(
                                        Icons.auto_awesome,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'AI Suggestion',
                                      style: kNormalTextStyle.copyWith(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'This looks like a Food and dinning expense',
                                  style: kNormalTextStyle.copyWith(
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      '⚡ Apply Suggestion',
                                      style: kNormalTextStyle.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                AddCard(child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Category*', style: kNormalTextStyle.copyWith(fontSize: 20),),
                     SizedBox(height: 15),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 2.2,
                      children: [
                        CategoryButton(
                          isSelected: selectedCategory == 'Food',
                          onTap: (){
                            setState(() {
                              selectedCategory = 'Food';
                            });
                          },
                          icon: FontAwesomeIcons.utensils,
                          name: 'Food',
                        ),
                        CategoryButton(
                          isSelected: selectedCategory == 'Transportation',
                          onTap: (){
                            setState(() {
                              selectedCategory = 'Transportation';
                            });
                          },
                          icon: FontAwesomeIcons.car,
                          name: 'Transportation',
                        ),
                        CategoryButton(
                          isSelected: selectedCategory == 'Bills',
                          onTap: (){
                            setState(() {
                              selectedCategory = 'Bills';
                            });
                          },
                          icon: FontAwesomeIcons.bolt,
                          name: 'Bills & Utilities',
                        ),
                        CategoryButton(
                          isSelected: selectedCategory == 'Shopping',
                          onTap: (){
                            setState(() {
                              selectedCategory = 'Shopping';
                            });
                          },
                          icon: FontAwesomeIcons.bagShopping,
                          name: 'Shopping',
                        ),
                        CategoryButton(
                          isSelected: selectedCategory == 'HealthCare',
                          onTap: (){
                            setState(() {
                              selectedCategory = 'HealthCare';
                            });
                          },
                          icon: FontAwesomeIcons.suitcaseMedical,
                          name: 'HealthCare',
                        ),
                        CategoryButton(
                          isSelected: selectedCategory == 'Entertainment',
                          onTap: (){
                            setState(() {
                              selectedCategory = 'Entertainment';
                            });
                          },
                          icon: FontAwesomeIcons.film,
                          name: 'Entertainment',
                        ),

                      ],)
                    ],
                  ),
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String name;
  final FaIconData icon;
  final bool isSelected;

  const CategoryButton({
    super.key, required this.onTap, required this. icon, required this.name, required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: isSelected
          ? Colors.blue.shade50
          : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: isSelected
            ? Colors.blue
            : Colors.grey.shade300,
            width: 1.5,
          )
        )
      ),
        onPressed: onTap,
        child: Row(
          children: [
            FaIcon(icon, color: isSelected ? Colors.blue : Colors.grey,),
            SizedBox(width: 10,),
            Expanded(
              child: Text(name,maxLines: 2, style: TextStyle(
                color: isSelected ? Colors.blue : Colors.grey
              ),),
            ),
          ],
        ));
  }
}
