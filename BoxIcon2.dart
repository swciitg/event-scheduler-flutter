import 'package:flutter/material.dart';

class BoxIcon extends StatelessWidget {
  final Widget child;

  final EdgeInsets padding;
  final double width, height;

  const BoxIcon(
      {  Key? key,
        required this.child,
        required this.padding,
        required this.width,
        required this.height,
        })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            border: Border.all(color: Colors.deepPurple.withAlpha(40), width: 2)),
        padding: padding == null ? EdgeInsets.all(8.0): padding ,
        child: Center(child: child));
  }
}