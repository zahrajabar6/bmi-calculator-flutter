import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/iconContent.dart';
import 'package:bmi_calculator/my_container.dart';
import 'package:bmi_calculator/round_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  female,
  male,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;
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
              children: [
                Expanded(
                    child: MyContainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: const IconContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                )),
                Expanded(
                    child: MyContainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: const IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                )),
              ],
            )),
            Expanded(
                child: MyContainer(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: numberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.0,
                        activeTrackColor: Colors.white,
                        thumbColor: buttomNavColor,
                        overlayColor: const Color(0x29EB1555),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                      inactiveColor: textColor,
                      min: 120.0,
                      max: 220.0,
                      value: height.toDouble(),
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: MyContainer(
                  color: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "WEIGHT",
                        style: labelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: MyContainer(
                  color: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "AGE",
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            )),
            Container(
              height: 80,
              width: double.maxFinite,
              margin: const EdgeInsets.only(top: 10),
              color: buttomNavColor,
            )
          ],
        ));
  }
}
