import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomCard extends StatefulWidget {
  const CustomCard({ Key? key }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
                            color: const Color(0xFFFEFBFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:  [
                            BoxShadow(
                            color: Colors.grey.withOpacity(0.2), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 10, // blur radius
                            offset: const Offset(0, 2), // changes position of shadow
                         ),
                          ]

                        ),
                          child:  Padding(
                            padding:  const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
                                  children : [
                                    Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff3D55BE),
                                            shape: BoxShape.circle,
                                          ),
                                           child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const <Widget>[
                                            Text('A' , style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,fontSize: 20,)),
                                          ],
                                        ),
                                          ),

                                     Expanded(
                                       child: Container(
                                          padding: const EdgeInsets.all(16.0),
                                             child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const <Widget>[
                                              Text('Header' , style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16, letterSpacing: 0.5)),
                                              Text('This is a placeholder' , style: TextStyle( height: 1.3, color: Color(0xFF1B1B1F),fontSize: 14, letterSpacing: 0.5)),

                                            ],
                                          ),
                                            ),
                                     ),

                                      
                                         CupertinoSwitch(value: _switchValue,
                                            onChanged: (value) {
                                              setState(() {
                                                _switchValue = value;
                                              });
                                          },
                                          
                                          activeColor: const Color(0xFF6FCF97),
                                          trackColor: const Color(0xffBA1B1B),
                                          
                                          ),
                                  ]
                                ),
        ),
      ),
    );
  }
}