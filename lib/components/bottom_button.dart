import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String label;

  BottomButton({required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity, // value equal to full width of the screen
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(label, style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}
