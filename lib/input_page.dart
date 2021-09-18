import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi/icon_widget.dart';
import 'package:my_bmi/reusable_card.dart';

const Color cardColor = Colors.teal;
Widget child = Container();

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
      body: body(),
    );
  }

  Row firstRow() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            child: ReusableCard(
              color: cardColor,
              child: IconWidget(
                icon: FontAwesomeIcons.mars,
                label: "MALE",
              ),
            ),
            onTap: () {
              print("tapped");
            },
          ),
        ),
        Expanded(
          child: GestureDetector(
            child: ReusableCard(
              color: cardColor,
              child: IconWidget(
                icon: FontAwesomeIcons.venus,
                label: "FEMALE",
              ),
            ),
            onTap: () {
              print("tapped");
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
