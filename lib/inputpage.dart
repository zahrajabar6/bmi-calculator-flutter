import 'package:bmi_calculator/my_container.dart';
import 'package:flutter/material.dart';

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
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Icon(Icons.add),
        // ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: const [
                Expanded(
                    child: MyContainer(
                  color: color,
                )),
                Expanded(
                    child: MyContainer(
                  color: color,
                )),
              ],
            )),
            const Expanded(
                child: MyContainer(
              color: color,
            )),
            Expanded(
                child: Row(
              children: const [
                Expanded(
                    child: MyContainer(
                  color: color,
                )),
                Expanded(
                    child: MyContainer(
                  color: color,
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
