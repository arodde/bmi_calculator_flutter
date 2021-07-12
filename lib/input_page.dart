import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'item_content.dart';

const activeCardColor = Color(0xFF1D1E33);
// const activeCardColor = Color(0xFF00ff00);
const inactiveCardColor = Color(0xFF111328);
const double bottomContainerHeight = 80;
const colorBottomContainerBackground = Color(0xFFEB1555);
const List<IconData> iconsData = [
  FontAwesomeIcons.mars,
  FontAwesomeIcons.venus
];
Gender selectedGender = Gender.male;

const List<String> labels = ['MALE', 'FEMALE'];
enum Gender { male, female }

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
                child: GestureDetector(
                  onTap: () {
                    print('MALE card was pressed');
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      iconData: iconsData.elementAt(Gender.male.index),
                      label: labels.elementAt(Gender.male.index),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('FEMALE card was pressed.');
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      iconData: iconsData.elementAt(Gender.female.index),
                      label: labels.elementAt(Gender.female.index),
                    ),
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
