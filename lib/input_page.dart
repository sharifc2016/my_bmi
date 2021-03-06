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
  int height = 120;
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
          child: ReusableCard(
            onPress: () {
              setState(() {
                selectGender = Gender.MALE;
              });
            },
            color: selectGender == Gender.MALE ? Colors.blueGrey : Colors.teal,
            child: IconWidget(
              icon: FontAwesomeIcons.mars,
              label: "MALE",
            ),
          ),
        ),
        Expanded(
          child: ReusableCard(
            onPress: () {
              setState(() {
                selectGender = Gender.FEMALE;
              });
            },
            color:
                selectGender == Gender.FEMALE ? Colors.blueGrey : Colors.teal,
            child: IconWidget(
              icon: FontAwesomeIcons.venus,
              label: "FEMALE",
            ),
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
            onPress: () {},
            color: cardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "CM",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: Colors.pink,
                    overlayColor: Colors.pink.shade300,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 22.0),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      inactiveColor: Colors.white60,
                      onChanged: (double h) {
                        setState(() {
                          height = h.toInt();
                        });
                      }),
                )
              ],
            ),
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
            onPress: () {},
            color: cardColor,
            child: child,
          ),
        ),
        Expanded(
          child: ReusableCard(
            onPress: () {},
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
