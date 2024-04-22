//Import section
import 'package:calculator/currency.dart';
import 'package:flutter/material.dart';
import 'package:calculator/home.dart';
import 'package:calculator/scientific_calculator.dart';

//This custom widget contain percentage calculator

//First part of statefulWidget
class Percentage extends StatefulWidget {
  const Percentage({super.key});

  //Setting up the state
  @override
  State<Percentage> createState() => _PercentageState();
}

//State
class _PercentageState extends State<Percentage> {
  //The section of Variables

  //Text field controller
  TextEditingController _total = TextEditingController();
  TextEditingController _net = TextEditingController();
  TextEditingController _percentage = TextEditingController();

  //This variables are for containing numbers
  double _totalN = 0;
  double _netN = 0;
  double _percentageN = 0;

  //building part
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        leading: Icon(Icons.percent_rounded),
        title: const Text("Percentage"),
      ),

      //Left sided drawer
      endDrawer: Drawer(
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

            //Route to standard calculator
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

            //Route to scientific calculator
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

            //Route to currency calculator
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D2),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Currency();
                          },
                        ),
                      );
                    },
                    child: Text("Currency",
                        style: TextStyle(color: Color(0xFF1C1C1C)))))
          ],
        ),
      ),

      //Body part of percentage calculator
      body: Center(
        //Center for placing everything's in center
        //Main frame of percentage calculator.
        child: Column(
          mainAxisSize: MainAxisSize.max,
          //This will allow it to takeover the whole screen.
          children: [
            //Percentage showing section.
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.sizeOf(context).width - 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xFFFF9500),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                      height: MediaQuery.sizeOf(context).height / 15,
                      child: TextField(
                        readOnly: true,
                        keyboardType: TextInputType.number,
                        controller: _percentage,
                        style: const TextStyle(color: Color(0xFFD4D4D2)),
                        decoration: const InputDecoration(
                            isDense: true,
                            hintText: "percentage...",
                            label: Row(
                              children: [
                                Icon(
                                  Icons.percent,
                                  color: Color(0xFFD4D4D2),
                                ),
                                Text(
                                  " Percentage...",
                                  style: TextStyle(color: Color(0xFFD4D4D2)),
                                )
                              ],
                            )),
                        //onChanged: (value) {},
                      )),
                ),
              ),
            ),

            //Net number showing section
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.sizeOf(context).width - 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xFFFF9500),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                      height: MediaQuery.sizeOf(context).height / 15,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _net,
                        style: const TextStyle(color: Color(0xFFD4D4D2)),
                        decoration: const InputDecoration(
                            isDense: true,
                            hintText: "net...",
                            label: Row(
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.join_left,
                                  color: Color(0xFFD4D4D2),
                                ),
                                Text(
                                  " Net...",
                                  style: TextStyle(color: Color(0xFFD4D4D2)),
                                )
                              ],
                            )),
                        onChanged: (value) {
                          _netN = double.tryParse(value) ?? 0;
                          _percentageN = ((100 / _totalN) * _netN);
                          _percentage.text =
                              _percentageN.toStringAsFixed(2) + "%";
                        },
                      )),
                ),
              ),
            ),

            //Total number showing section
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xFFFF9500),
                ),
                width: MediaQuery.sizeOf(context).width - 40,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                      height: MediaQuery.sizeOf(context).height / 15,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _total,
                        style: const TextStyle(color: Color(0xFFD4D4D2)),
                        decoration: const InputDecoration(
                            isDense: true,
                            hintText: "total...",
                            label: Row(
                              children: [
                                Icon(
                                  Icons.join_full,
                                  color: Color(0xFFD4D4D2),
                                ),
                                Text(
                                  " Total...",
                                  style: TextStyle(color: Color(0xFFD4D4D2)),
                                )
                              ],
                            )),
                        onChanged: (value) {
                          setState(() {
                            _totalN = double.tryParse(value) ?? 0;
                            _percentageN = ((100 / _totalN) * _netN);
                            _percentage.text =
                                _percentageN.toStringAsFixed(2) + "%";
                          });
                        },
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
