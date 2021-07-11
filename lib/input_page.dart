import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'item_content.dart';

const activeCardColor = Color(0xFF1D1E33);
// const activeCardColor = Color(0xFF4D1143);
const double bottomContainerHeight = 80;
const colorBottomContainerBackground = Color(0xFFEB1555);
const List<IconData> iconsData = [
  FontAwesomeIcons.mars,
  FontAwesomeIcons.venus
];
const List<String> labels = ['MALE', 'FEMALE'];

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
                  colour: activeCardColor,
                  cardChild: IconContent(
                    iconData: iconsData.elementAt(0),
                    label: labels.elementAt(0),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                    iconData: iconsData.elementAt(1),
                    label: labels.elementAt(1),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            colour: activeCardColor,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: colorBottomContainerBackground,
          width: double.infinity,
          height: bottomContainerHeight,
          margin: EdgeInsets.only(top: 10.0),
        ),
      ]),
    );
  }
}
