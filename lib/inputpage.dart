import 'package:bmi_calculator/iconContent.dart';
import 'package:bmi_calculator/my_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color color = Color(0xFF1D1D33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: const [
                Expanded(
                    child: MyContainer(
                  color: color,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                )),
                Expanded(
                    child: MyContainer(
                  color: color,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                )),
              ],
            )),
            Expanded(
                child: MyContainer(
              color: color,
              cardChild: Container(),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: MyContainer(
                  color: color,
                  cardChild: Container(),
                )),
                Expanded(
                    child: MyContainer(
                  color: color,
                  cardChild: Container(),
                )),
              ],
            )),
            Container(
              height: 80,
              width: double.maxFinite,
              margin: const EdgeInsets.only(top: 10),
              color: const Color(0xFFEB1555),
            )
          ],
        ));
  }
}
