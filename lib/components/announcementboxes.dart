import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class AnnouncementBoxes extends StatelessWidget {
  const AnnouncementBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: keventBoxDownBoxDecoration,
      child:  Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16.0),
              child: Container(
                margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                child: const Text(
                  ksampleLoginId,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'Roboto',
                    color: Color(0xFF7A828A),
                  ),
                  maxLines: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
