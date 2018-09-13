import 'package:flutter/material.dart';
import 'dart:core';

main() => runApp((DevFest()));

class DevFest extends StatefulWidget {
  @override
  _DevFestState createState() => _DevFestState();
}

class _DevFestState extends State<DevFest> {
  List track = [
    'Flutter',
    'Android',
    'MWS',
    'IoT',
    'AI',
    'Software Craftmnship',
    'Design'
  ];

  double value = 0.0;

  String message = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[


              Container(
                color: Colors.transparent,
                child: Slider(
                  value: value,
                  onChanged: (double e) => changed(e),
                  min: 0.0,
                  max: 6.0,
                  label: message,
                  divisions: 6,


                ),
              ),
              _cardProvider(value.floor()),
            ],
          ),
        ),
      ),
    );
  }

  void changed(e) {
    setState(() {
      value = e;

      message = track[e.floor()];
    });
  }
}

 Widget _cardProvider(int e) {


   List<Widget> card = [
     Card(
       color: Colors.red,
     ),
     Card(
       color: Colors.yellow,
     ),
     Card(
       color: Colors.blue,
     ),
     Card(
       color: Colors.green,
     ),
     Card(
       color: Colors.black,
     ),
     Card(
       color: Colors.grey,
     ),
     Card(
       color: Colors.cyan,
     ),
   ];

  return card[e];
}
