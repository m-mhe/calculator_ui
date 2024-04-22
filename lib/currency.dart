//Import section
import 'package:calculator/home.dart';
import 'package:flutter/material.dart';
import 'package:calculator/percentage.dart';
import 'package:calculator/scientific_calculator.dart';

//This custom widget contain Standard Calculator.
class Currency extends StatelessWidget {
  Currency({super.key});

  //Variables
  final TextEditingController currencyOne = TextEditingController();
  final TextEditingController currencyTwo = TextEditingController();
  final String answerOne = '';
  final double answerTwo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //AppBar()
        appBar: AppBar(
          leading: const Icon(Icons.currency_exchange_rounded),
          title: const Text("Currency Convertor"),
        ),

        //Left sided drawer
        endDrawer: Drawer(
          shape: const RoundedRectangleBorder(
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
                      child: const Icon(
                        Icons.calculate,
                        color: Color(0xFFFF9500),
                        size: 50,
                      ))),

              //Navigation route for scientific calculator
              Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFD4D4D2),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return Home();
                        }));
                      },
                      child: const Text("Standard",
                          style: TextStyle(color: Color(0xFF1C1C1C))))),

              //Navigation route for Percentage calculator
              Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFD4D4D2),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return ScientificCalc();
                        }));
                      },
                      child: const Text("Scientific",
                          style: TextStyle(color: Color(0xFF1C1C1C))))),

              //Navigation route for currency calculator
              Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFD4D4D2),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const Percentage();
                        }));
                      },
                      child: const Text("Percentage",
                          style: TextStyle(color: Color(0xFF1C1C1C)))))
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: MediaQuery.sizeOf(context).height / 8,
                  width: MediaQuery.sizeOf(context).width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.green[600],
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 0.56,
                    widthFactor: 0.88,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: currencyOne,
                      onChanged: (currency) {
                        currencyTwo.text = (double.parse(currency) / 109.51)
                            .toStringAsFixed(2);
                      },
                      style: const TextStyle(
                          fontSize: 16, color: Color(0xFFD4D4D2)),
                      decoration: const InputDecoration(
                          isDense: true,
                          hintText: "TK...",
                          label: Row(
                            children: [
                              Icon(
                                Icons.attach_money_rounded,
                                color: Color(0xFFD4D4D2),
                              ),
                              Text(
                                " BDT",
                                style: TextStyle(color: Color(0xFFD4D4D2)),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: MediaQuery.sizeOf(context).height / 8,
                  width: MediaQuery.sizeOf(context).width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.green[600],
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 0.56,
                    widthFactor: 0.88,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: currencyTwo,
                      onChanged: (currency) {
                        currencyOne.text = (double.parse(currency) * 109.51)
                            .toStringAsFixed(2);
                      },
                      style: const TextStyle(
                          fontSize: 16, color: Color(0xFFD4D4D2)),
                      decoration: const InputDecoration(
                          isDense: true,
                          hintText: "Dollar...",
                          label: Row(
                            children: [
                              Icon(
                                Icons.attach_money_rounded,
                                color: Color(0xFFD4D4D2),
                              ),
                              Text(
                                " USD",
                                style: TextStyle(color: Color(0xFFD4D4D2)),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
