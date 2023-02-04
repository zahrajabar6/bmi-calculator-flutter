import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.buttonTitle,
    this.onPress,
  }) : super(key: key);

  final String buttonTitle;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 80,
        width: double.maxFinite,
        margin: const EdgeInsets.only(top: 10),
        color: buttomNavColor,
        child: Center(
          child: Text(
            buttonTitle,
            style: navTextStyle,
          ),
        ),
      ),
    );
  }
}
