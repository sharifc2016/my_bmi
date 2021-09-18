import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi/enums.dart';
import 'package:my_bmi/icon_widget.dart';
import 'package:my_bmi/reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color cardColor = Colors.teal;
  Gender selectGender = Gender.NOT_SELECTED;
  Widget child = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: body(),
    );
  }

  Row firstRow() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            child: ReusableCard(
              color:
                  selectGender == Gender.MALE ? Colors.blueGrey : Colors.teal,
              child: IconWidget(
                icon: FontAwesomeIcons.mars,
                label: "MALE",
              ),
            ),
            onTap: () {
              setState(() {
                selectGender = Gender.MALE;
              });
            },
          ),
        ),
        Expanded(
          child: GestureDetector(
            child: ReusableCard(
              color:
                  selectGender == Gender.FEMALE ? Colors.blueGrey : Colors.teal,
              child: IconWidget(
                icon: FontAwesomeIcons.venus,
                label: "FEMALE",
              ),
            ),
            onTap: () {
              setState(() {
                selectGender = Gender.FEMALE;
              });
            },
          ),
        ),
      ],
    );
    // return Container(

    // );
  }

  Row secondRow() {
    return Row(
      children: [
        Expanded(
          child: ReusableCard(
            color: cardColor,
            child: child,
          ),
        ),
      ],
    );
    // return Container(

    // );
  }

  Row thirdRow() {
    return Row(
      children: [
        Expanded(
          child: ReusableCard(
            color: cardColor,
            child: child,
          ),
        ),
        Expanded(
          child: ReusableCard(
            color: cardColor,
            child: child,
          ),
        ),
      ],
    );
    // return Container(

    // );
  }

  Column body() {
    return Column(
      children: [
        Expanded(child: firstRow()),
        Expanded(child: secondRow()),
        Expanded(child: thirdRow())
      ],
    );
  }
}
