//Import section
import 'package:calculator/currency.dart';
import 'package:flutter/material.dart';
import 'package:calculator/home.dart';
import 'package:calculator/percentage.dart';

//This custom widget contain Scientific calculator

//First part of statefulWidget
class ScientificCalc extends StatefulWidget {
  const ScientificCalc({super.key});

  //Setting up the state
  @override
  State<ScientificCalc> createState() => _ScientificCalcState();
}

//State
class _ScientificCalcState extends State<ScientificCalc> {

  //Building
  @override
  Widget build(BuildContext context) {
    //Scaffold
    return Scaffold(
      //It gives a background color
      backgroundColor: Color(0xFF505050),
      //App bar
      appBar: AppBar(
        leading: Icon(Icons.science_rounded),
        title: const Text("Scientific Calculator"),
      ),

      //Left sided drawer
      endDrawer: Drawer(
        //Drawer configuration
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
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

            //Route to standard
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D2),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    child: Text("Standard",
                        style: TextStyle(color: Color(0xFF1C1C1C))))),

            //Route to percentage calculator
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

            //Route to currency calculator
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D2),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return Currency();
                      }));
                    },
                    child: Text("Currency",
                        style: TextStyle(color: Color(0xFF1C1C1C)))))
          ],
        ),
      ),

      body: Column(//To place UI element in vertically
        //Ui will pleased from the top of the screen
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //The display
          Container(
            color: Color(0xFFD4D4D2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Top
                Container(
                  color: Color(0xFFD4D4D2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Top left display
                      SizedBox(
                        height: 22,
                        width: 200,
                        child: TextField(
                          readOnly: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF1C1C1C),
                              fontWeight: FontWeight.w500),
                          cursorColor: Color(0xFF1C1C1C),
                          decoration: InputDecoration(
                            isDense: true,
                            fillColor: Color(0xFFD4D4D2),
                          ),
                        ),
                      ),
                      //Top right button
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                        color: Color(0xFF1C1C1C),
                      )
                    ],
                  ),
                ),
                //Mathematical expression
                SizedBox(
                  height: 99,
                  child: TextField(
                    maxLines: 2,
                    style: TextStyle(color: Color(0xFF1C1C1C), fontSize: 22),
                    cursorColor: Color(0xFF1C1C1C),
                    decoration: InputDecoration(
                        isDense: true, fillColor: Color(0xFFD4D4D2)),
                  ),
                ),
                //Answer of those mathematical expression
                const SizedBox(
                  height: 63,
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                    cursorColor: Color(0xFF1C1C1C),
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: Color(0xFFD4D4D2),
                    ),
                  ),
                ),
                //Bottom
                Container(
                  color: Color(0xFFD4D4D2),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Bottom left display
                      SizedBox(
                          height: 22,
                          width: 200,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF1C1C1C),
                                fontWeight: FontWeight.w500),
                            cursorColor: Color(0xFF1C1C1C),
                            decoration: InputDecoration(
                              fillColor: Color(0xFFD4D4D2),
                            ),
                          )),
                      //Bottom right display
                      SizedBox(
                          height: 22,
                          width: 120,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF1C1C1C),
                                fontWeight: FontWeight.w500),
                            cursorColor: Color(0xFF1C1C1C),
                            decoration: InputDecoration(
                              fillColor: Color(0xFFD4D4D2),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          //End of the display


          //Buttons UI
          Column(
            children: [
              //Button row one
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SizedBox(
                    width: 55,
                    height: 20,
                    child: TextButton(
                      onPressed: () {},
                      child: Icon(Icons.keyboard_arrow_up_rounded),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Color(0xFFC0C0C0),
                          foregroundColor: Color(0xFF1C1C1C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                ),],
              ),
              //Button row two
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "SHIFT",
                          style: TextStyle(fontSize: 11),
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "MENU",
                          style: TextStyle(fontSize: 11),
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 20,
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(Icons.keyboard_arrow_left_rounded),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFFC0C0C0),
                            foregroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 20,
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(Icons.keyboard_arrow_right_rounded),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFFC0C0C0),
                            foregroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(Icons.backspace_rounded, size: 16,),
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
                    padding: const EdgeInsets.only( right: 5),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "AC",
                          style: TextStyle(fontSize: 14),
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
              //Button row three
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Padding(
                  padding: const EdgeInsets.only(top: 2.5),
                  child: SizedBox(
                    width: 55,
                    height: 20,
                    child: TextButton(
                      onPressed: () {},
                      child: Icon(Icons.keyboard_arrow_down_rounded),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Color(0xFFC0C0C0),
                          foregroundColor: Color(0xFF1C1C1C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                ),],
              ),
              //Button row four
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(
                    left: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        ">DRG",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "FSE",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "MTRX",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "∏",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "d/dx",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "CNST",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Button row five
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "DRG",
                          style: TextStyle(fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "X <-> E",
                          style: TextStyle(fontSize: 13),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("[ :: ]", style: TextStyle(fontSize: 16),),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "∑",
                          style: TextStyle(fontSize: 18),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("∫dx", style: TextStyle(fontSize: 16),),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "CONV",
                          style: TextStyle(fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ],
              ),
              //Button row six
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(
                      left: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "hyp",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "sin⁻¹",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "cos⁻¹",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "tan⁻¹",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "∠",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "LogₓY",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Button row seven
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "π",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xFFFF9500),
                            backgroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "sin",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xFFFF9500),
                            backgroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "cos",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xFFFF9500),
                            backgroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "tan",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xFFFF9500),
                            backgroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "i",
                          style: TextStyle(fontSize: 18),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xFFFF9500),
                            backgroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "e",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xFFFF9500),
                            backgroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ],
              ),
              //Button row eight
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(
                      left: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "lim",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "x³",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "∛x",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "∛y",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "10^x",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "e^x",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Button row nine
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "x⁻¹",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "x²",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "√x",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "x^y",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("log₁₀", style: TextStyle(fontSize: 16),),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "ln",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ],
              ),
              //Button row ten
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(
                      left: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "STAT",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "a b/c",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Y",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "HISTORY",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "M+",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "M-",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )

                ],
              ),
              //Button row eleven
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "D°M'S",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "d/c",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "X",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "XY,M",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("MR", style: TextStyle(
                          fontSize: 16
                        ),),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "X -> M",
                          style: TextStyle(fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                ],
              ),
              //Button row twelve
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(
                      left: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "CPLX",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "∞",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        " ",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        " ",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "%",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "mod",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Button row thirteen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "7",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "8",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "9",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 82.5,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "(",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFFC0C0C0),
                            foregroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SizedBox(
                      width: 82.5,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ")",
                          style: TextStyle(fontSize: 14),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(
                      left: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "n!",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "nCr",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "nPr",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        " ",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        ">BIN",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        ">OCT",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Button row fifteen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only( left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "4",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "5",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "6",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 82.5,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "×",
                          style: TextStyle(fontSize: 25),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFFC0C0C0),
                            foregroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( right: 5),
                    child: SizedBox(
                      width: 82.5,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "÷",
                          style: TextStyle(fontSize: 25),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(
                      left: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "abs",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "icm",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "gcd",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        " ",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        ">DEC",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        ">HEX",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Button row seventeen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only( left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 82.5,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 25),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFFC0C0C0),
                            foregroundColor: Color(0xFF1C1C1C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( right: 5),
                    child: SizedBox(
                      width: 82.5,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "—",
                          style: TextStyle(fontSize: 25),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(
                      left: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "OTHER",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "ran#",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Ans",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        " ",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "EXP SI",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 5
                  ),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        textAlign: TextAlign.center,
                        "=,<,>",
                        style: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Button row nineteen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only( left: 5, right: 0),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ".",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "+/-",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 82.5,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "EXP",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF1C1C1C),
                            foregroundColor: Color(0xFFC0C0C0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( right: 5),
                    child: SizedBox(
                      width: 82.5,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "✓",
                          style: TextStyle(fontSize: 20),
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
          )
        ],
      ),
    );
  }
}