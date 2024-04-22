//Import section
import 'package:calculator/currency.dart';
import 'package:flutter/material.dart';
import 'package:calculator/percentage.dart';
import 'package:calculator/scientific_calculator.dart';

//This custom widget contain Standard Calculator.
class Home extends StatelessWidget {
  Home({super.key});

  //Variables
  TextEditingController calculateShow = TextEditingController();
  TextEditingController calculateAnswerShow = TextEditingController();
  String answerOne = '';
  double answerTwo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar()
      appBar: AppBar(
        leading: Icon(Icons.calculate),
        title: const Text("Standard Calculator"),
      ),

      //Left sided drawer
      endDrawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
        ),

        //Drawer element
        child: ListView(
          children: [
            //Drawer header
            DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF1C1C1C)),
                child: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.calculate,
                      color: Color(0xFFFF9500),
                      size: 50,
                    ))),

            //Navigation route for scientific calculator
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D2),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return ScientificCalc();
                      }));
                    },
                    child: Text("Scientific",
                        style: TextStyle(color: Color(0xFF1C1C1C))))),

            //Navigation route for Percentage calculator
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D2),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Percentage();
                      }));
                    },
                    child: Text("Percentage",
                        style: TextStyle(color: Color(0xFF1C1C1C))))),

            //Navigation route for currency calculator
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D2),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return Currency();
                      },),);
                    },
                    child: Text("Currency",
                        style: TextStyle(color: Color(0xFF1C1C1C)))))
          ],
        ),
      ),
      body:
          //UI
          Column(
        children: [
          Container(
              height: MediaQuery.sizeOf(context).height / 2.5,
              width: MediaQuery.sizeOf(context).width,
              color: Color(0xff1C1C1C),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: calculateShow,
                    onChanged: (value){},
                    style: TextStyle(
                        color: Color(0xFFD4D4D2),
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                    decoration: InputDecoration(
                        fillColor: Color(0xff1C1C1C),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1C1C1C)))),
                  ),
                  TextField(
                    controller: calculateAnswerShow,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color(0xFFFF9500),
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                    decoration: InputDecoration(
                        fillColor: Color(0xff1C1C1C),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1C1C1C)))),
                  )
                ],
              )),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              color: Color(0xFF1C1C1C),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Button row thirteen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "7",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "8",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "9",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "(",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xFFFF9500),
                                foregroundColor: Color(0xFF1C1C1C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              ")",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xFFFF9500),
                                foregroundColor: Color(0xFF1C1C1C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Button row fourteen

                  //Button row fifteen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "4",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "5",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "6",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "×",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xFFFF9500),
                                foregroundColor: Color(0xFF1C1C1C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "÷",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xFFFF9500),
                                foregroundColor: Color(0xFF1C1C1C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Button row sixteen

                  //Button row seventeen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "2",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "3",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "+",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xFFFF9500),
                                foregroundColor: Color(0xFF1C1C1C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "—",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xFFFF9500),
                                foregroundColor: Color(0xFF1C1C1C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Button row eighteen

                  //Button row nineteen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "0",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              ".",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "+/-",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xff505050),
                                foregroundColor: Color(0xFFC0C0C0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "AC",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xFFFF9500),
                                foregroundColor: Color(0xFF1C1C1C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          height: 55,
                          child: TextButton(
                            onPressed: () {
                            },
                            child: Text(
                              "=",
                              style: TextStyle(fontSize: 26),
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Color(0xFFFF9500),
                                foregroundColor: Color(0xFF1C1C1C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
