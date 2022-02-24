import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class UploadFilesBoxes extends StatelessWidget {
  const UploadFilesBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: keventBoxDownBoxDecoration,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                kuploadFile,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13.0,
                  fontFamily: 'Roboto',
                  color: Color(0xFF7A828A),

                ),

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 20.0, bottom: 20.0,left: 16.0),
            child: Container(
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(4),
                width: 55,
                decoration: BoxDecoration(
                  color: Color(0xffEB5757),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: const Center(
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 19,

                  ),)
            ),
          )
        ],
      ),
    );
  }
}