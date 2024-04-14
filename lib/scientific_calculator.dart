//Import section
import 'package:flutter/material.dart';
import 'package:calculator/home.dart';
import 'package:calculator/percentage.dart';

class ScientificCalc extends StatefulWidget {
  const ScientificCalc({super.key});

  @override
  State<ScientificCalc> createState() => _ScientificCalcState();
}

class _ScientificCalcState extends State<ScientificCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF505050),
      appBar: AppBar(
        leading: Icon(Icons.science_rounded),
        title: const Text("Scientific Calculator"),
      ),
      endDrawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF1C1C1C)),
                child: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.calculate,
                      color: Color(0xFFFF9500),
                      size: 50,
                    ))),
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
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D2),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text("Currency",
                        style: TextStyle(color: Color(0xFF1C1C1C)))))
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Color(0xFFD4D4D2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xFFD4D4D2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                        color: Color(0xFF1C1C1C),
                      )
                    ],
                  ),
                ),
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
                Container(
                  color: Color(0xFFD4D4D2),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
          Column(
            children: [
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
                        "Arcsin",
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
                        "Arccos",
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
                        "Arctan",
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
                        "log",
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
                        child: Text(
                          "<",
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ">",
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
                    padding: const EdgeInsets.only(right: 5),
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
                      right: 5
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
                  )
                ],
              ),
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
                        child: Text(
                          "<",
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ">",
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
                    padding: const EdgeInsets.only(right: 5),
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
                      right: 5
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
                  )

                ],
              ),
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
                        child: Text(
                          "<",
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ">",
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
                    padding: const EdgeInsets.only(right: 5),
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
                      right: 5
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
                  )
                ],
              ),
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
                        child: Text(
                          "<",
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ">",
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
                    padding: const EdgeInsets.only(right: 5),
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
                      right: 5
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
                  )
                ],
              ),
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
                        child: Text(
                          "<",
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ">",
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
                      right: 5
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
                  )
                ],
              ),
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
                        child: Text(
                          "<",
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ">",
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
                      right: 5
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
                  )
                ],
              ),
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
                        child: Text(
                          "<",
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
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 55,
                      height: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ">",
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