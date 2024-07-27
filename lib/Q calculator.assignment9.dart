import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Mycalculate());
}

class Mycalculate extends StatefulWidget {
  const Mycalculate({super.key});

  @override
  State<Mycalculate> createState() => _MycalculateState();
}

class _MycalculateState extends State<Mycalculate> {
  TextEditingController firstnumber = TextEditingController();
  TextEditingController secondnumber = TextEditingController();
  num result = 0;
  num clean = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("about"),
                leading: Icon(Icons.account_balance_wallet_rounded),
                onTap: () {},
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(child: Text("Calculator")),
        ),
        body: Center(
          child: Container(
            child: ListView(children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: TextField(
                  controller: firstnumber,
                  decoration: InputDecoration(
                      hintText: "add number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: TextField(
                  controller: secondnumber,
                  decoration: InputDecoration(
                      hintText: "add number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              //fisrt
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 10, 30, 10),
                    child: ElevatedButton(
                        onPressed: () => setState(() {
                              num number1 = num.parse(firstnumber.text);
                              num number2 = num.parse(secondnumber.text);
                              result = number1 + number2;
                            }),
                        child: const Row(
                          children: [
                            Icon(CupertinoIcons.plus),
                            Text(
                              'press',
                              style: TextStyle(fontFamily: "Alger"),
                            )
                          ],
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: ElevatedButton(
                        onPressed: () => setState(() {
                              num number1 = num.parse(firstnumber.text);
                              num number2 = num.parse(secondnumber.text);
                              result = number1 - number2;
                            }),
                        child: const Row(
                          children: [
                            Icon(CupertinoIcons.minus),
                            Text(
                              'press',
                              style: TextStyle(fontFamily: "Alger"),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 10, 30, 10),
                    child: ElevatedButton(
                        onPressed: () => setState(() {
                              num number1 = num.parse(firstnumber.text);
                              num number2 = num.parse(secondnumber.text);
                              result = number1 * number2;
                            }),
                        child: const Row(
                          children: [
                            Icon(CupertinoIcons.multiply),
                            Text(
                              'press',
                              style: TextStyle(fontFamily: "Alger"),
                            )
                          ],
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: ElevatedButton(
                        onPressed: () => setState(() {
                              num number1 = num.parse(firstnumber.text);
                              num number2 = num.parse(secondnumber.text);
                              result = number1 / number2;
                            }),
                        child: const Row(
                          children: [
                            Icon(CupertinoIcons.divide),
                            Text(
                              'press',
                              style: TextStyle(fontFamily: "Alger"),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(190, 30, 35, 5),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Result = $result")),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(

                              padding: EdgeInsets.fromLTRB(190, 10, 35, 10),
                              child: ElevatedButton(
                                  onPressed: () => setState(() {
                                        result = 0;
                                        secondnumber =
                                            TextEditingController(text: null);
                                        firstnumber =
                                            TextEditingController(text: null);
                                      }),
                                  child: Text("     Clean    ")),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [

                          Image.asset("photo/MOBIL2.jpg",height: 300,width: 300,),


                        ],
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
