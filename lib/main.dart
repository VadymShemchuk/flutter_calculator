// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color? btncolor, Color? txtcolor) {
    return Container(
      child: RaisedButton(
          onPressed: () {},
          child: Text(
            btntxt,
            style: TextStyle(
              fontSize: 35,
              color: txtcolor,
            ),
          ),
          shape: CircleBorder(),
          color: btncolor,
          padding: EdgeInsets.all(20.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //calculator display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton('%', Colors.grey, Colors.black),
                calcbutton('/', Colors.amber[700], Colors.white)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('7', Colors.grey[850], Colors.white),
                calcbutton('8', Colors.grey[850], Colors.white),
                calcbutton('9', Colors.grey[850], Colors.white),
                calcbutton('x', Colors.amber[700], Colors.white)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('4', Colors.grey[850], Colors.white),
                calcbutton('5', Colors.grey[850], Colors.white),
                calcbutton('6', Colors.grey[850], Colors.white),
                calcbutton('-', Colors.amber[700], Colors.white)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('1', Colors.grey[850], Colors.white),
                calcbutton('2', Colors.grey[850], Colors.white),
                calcbutton('3', Colors.grey[850], Colors.white),
                calcbutton('+', Colors.amber[700], Colors.white)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  padding: const EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: () {
                    //button function
                  },
                  shape: const StadiumBorder(),
                  child: const Text(
                    '0',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  color: Colors.grey[850],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
