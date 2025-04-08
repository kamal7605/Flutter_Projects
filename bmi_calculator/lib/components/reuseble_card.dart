import 'package:flutter/cupertino.dart';

class ReusebleCard extends StatelessWidget {
  ReusebleCard(
      {@required this.color, @required this.cardChild, @required this.onPress});

  Color? color;
  Widget? cardChild;
  Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
