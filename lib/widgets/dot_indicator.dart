import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  // const DotIndicator({Key key}) : super(key: key);
  bool isActive;
  final Color activeColor = Color.fromRGBO(50, 186, 176, 1);
  final Color disableColor = Color.fromRGBO(91, 113, 111, 1);
  DotIndicator(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 13 : 8,
      width: isActive ? 13 : 8,
      decoration: BoxDecoration(
        color: isActive ? activeColor : disableColor,
        borderRadius: BorderRadius.all(Radius.circular(13))
      ),
      );
  }
}