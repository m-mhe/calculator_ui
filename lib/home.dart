//Import section
import 'package:flutter/material.dart';
import 'package:calculator/percentage.dart';
import 'package:calculator/scientific_calculator.dart';

//This custom widget contain Standard Calculator.
class Home extends StatelessWidget {
  const Home({super.key});

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
              decoration: BoxDecoration(color: Color(0xFFFF9500)),
              child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.calculate,
                  color: Color(0xFFD4D4D2),
                  size: 50,
                ),
              ),
            ),

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
                    onPressed: () {},
                    child: Text("Currency",
                        style: TextStyle(color: Color(0xFF1C1C1C)))))
          ],
        ),
      ),
    );
  }
}
