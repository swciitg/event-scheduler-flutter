import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFFEFBFF),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 10, // blur radius
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(children: [
            Container(
              width: 89.0,
              height: 70.0,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage("https://i.ibb.co/9qPPgQK/image.png"),
                      fit: BoxFit.cover)),
                      child: Column(
                         mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2 ), borderRadius: BorderRadius.circular(5)),
                          child: Column(
                           
                            
                            children: [Container(child: const Text('Dec',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 10,
                            letterSpacing: 0.5)), decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white, width: 2))),), const Text('10',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 0.5))],) 
                        ),

                      
                      ],
                      ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Text('All Team Meet',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0.5)),
                    Text('Sun, Jan 9, 7:30 PM GMT+5:30',
                        style: TextStyle(
                            height: 1.5,
                            color: Color(0xFF1B1B1F),
                            fontSize: 12,
                            letterSpacing: 0.5)),
                  ],
                ),
              ),
            ),
            Container(
              width: 32.0,
              height: 32.0,
              decoration: const BoxDecoration(
                color: Color(0xff3D55BE),
                shape: BoxShape.circle,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                   Icon(Icons.settings, color: Colors.white,size: 20.0,)
                ],
              ),
            ),
            
          ]),
        ),
      ),
    );
  }
}
