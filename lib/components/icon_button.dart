import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? iconData;
  final VoidCallback? onPressed; // use for passing function on buttons

  RoundIconButton({this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData, color: Colors.white),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
