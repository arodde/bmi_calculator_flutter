import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFFABCDEF),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFFABCDEF),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            colour: Color(0xFFABCDEF),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFFABCDEF),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFFABCDEF),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
