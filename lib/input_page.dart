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
      body: body(),
    );
  }

  Row firstRow() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.teal,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.teal,
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
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.teal,
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
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.teal,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.teal,
            ),
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
