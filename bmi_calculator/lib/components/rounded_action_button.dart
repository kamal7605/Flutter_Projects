import 'package:flutter/material.dart';

class RoundedActionButton extends StatelessWidget {
  RoundedActionButton({required this.icon, required this.onIncDec});

  final IconData icon;
  Function()? onIncDec;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onIncDec,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
