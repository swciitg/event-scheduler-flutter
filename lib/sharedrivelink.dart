import 'package:flutter/material.dart';
import 'constants.dart';

class DriveLinkBoxes extends StatelessWidget {
  const DriveLinkBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: keventBoxDownBoxDecoration,
      child: const Expanded(
        child: Padding(
          padding: EdgeInsets.all( 16.0),
          child: Text(
            ksampleLoginId,
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'Roboto',
              color: Color(0xFF7A828A),
            ),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}