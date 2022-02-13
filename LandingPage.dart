import 'package:event_scheduler/BoxIcon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:event_scheduler/BoxIcon2.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body : ListView(
        scrollDirection : Axis.vertical ,
        children : <Widget>[


          Padding(
        padding: const EdgeInsets.all(10),
        child : Container(
          child : FittedBox (
          child: Material(
            color : Colors.white,
            elevation : 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Colors.grey,

            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              body : Stack(
              children : <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Image(
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                     image : NetworkImage ("https://www.colorsplash.co.in/wp-content/themes/arihant/timthumb.php?src=https://www.colorsplash.co.in/wp-content/uploads/2013/05/Web_services_1.jpg&h=160&w=240&zc=1"),
                    ),
                  )
                    ),



            )

                Container(
                  alignment: FractionalOffset.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                          Text('headline', style: new TextStyle(color: Color(0xFF2E3233))),
                          SizedBox(height : 10),
                          Text('subtitle', style: new TextStyle(color: Color(0xFF84A2AF), fontWeight: FontWeight.bold),),
                            SizedBox(height: 20),
                            Text('body', style: new TextStyle(color: Color(0xFF84A2AF), fontWeight: FontWeight.bold),
                        ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children :[ BoxIcon(
                        height: 40.0,
                        width: 100.0,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Print',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 18,
                            color: Colors.greenAccent,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                        Expanded(child: SizedBox(
                          height: 40 ,
                        ),),
                        BoxIcon2(child: Text('Undo rsvp' , style: TextStyle(
                          fontFamily : 'itallic'
                        ),),
                            padding:EdgeInsets.all(10),
                            width: 60,
                            height: 40,),
                      ]
                  ),

                  ),

              ]
            ),
          ),),
    ),
        ),


          Padding(
            padding: const EdgeInsets.all(10),
            child : Container(
              child : FittedBox (
                child: Material(
                  color : Colors.white,
                  elevation : 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Colors.grey,
                  child:  Column(
                      children : <Widget>[

                        Container(
                          width: 250,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.bottomCenter,
                                image:  NetworkImage("https://www.colorsplash.co.in/wp-content/themes/arihant/timthumb.php?src=https://www.colorsplash.co.in/wp-content/uploads/2013/05/Web_services_1.jpg&h=160&w=240&zc=1")
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          color: Colors.white,
                          width:100 ,
                          height: 100,

                          child : Text('i love you '
                          ),
                        ),
                      ]
                  ),
                ),),
            ),
          ),



    Padding(
    padding: const EdgeInsets.all(10),
    child : Container(
    child : FittedBox (
    child: Material(
    color : Colors.white,
    elevation : 14.0,
    borderRadius: BorderRadius.circular(24.0),
    shadowColor: Colors.grey,
    child:  Column(
    children : <Widget>[

    Container(
    width: 250,
    height: 100,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(24.0),
    child: Image(
    fit: BoxFit.contain,
    alignment: Alignment.bottomCenter,
    image:  NetworkImage("https://www.colorsplash.co.in/wp-content/themes/arihant/timthumb.php?src=https://www.colorsplash.co.in/wp-content/uploads/2013/05/Web_services_1.jpg&h=160&w=240&zc=1")
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    color: Colors.white,
    width:100 ,
    height: 100,

    child : Text('i love you '
    ),
    ),
    ]
    ),
    ),),
    ),
    ),





    Padding(
    padding: const EdgeInsets.all(10),
    child : Container(
    child : FittedBox (
    child: Material(
    color : Colors.white,
    elevation : 14.0,
    borderRadius: BorderRadius.circular(24.0),
    shadowColor: Colors.grey,
    child:  Column(
    children : <Widget>[

    Container(
    width: 250,
    height: 100,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(24.0),
    child: Image(
    fit: BoxFit.contain,
    alignment: Alignment.bottomCenter,
    image:  NetworkImage("https://www.colorsplash.co.in/wp-content/themes/arihant/timthumb.php?src=https://www.colorsplash.co.in/wp-content/uploads/2013/05/Web_services_1.jpg&h=160&w=240&zc=1")
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    color: Colors.white,
    width:100 ,
    height: 100,

    child : Text('i love you '
    ),
    ),
    ]
    ),
    ),),
    ),
    ),




    Padding(
    padding: const EdgeInsets.all(10),
    child : Container(
    child : FittedBox (
    child: Material(
    color : Colors.white,
    elevation : 14.0,
    borderRadius: BorderRadius.circular(24.0),
    shadowColor: Colors.grey,
    child:  Column(
    children : <Widget>[

    Container(
    width: 250,
    height: 100,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(24.0),
    child: Image(
    fit: BoxFit.contain,
    alignment: Alignment.bottomCenter,
    image:  NetworkImage("https://www.colorsplash.co.in/wp-content/themes/arihant/timthumb.php?src=https://www.colorsplash.co.in/wp-content/uploads/2013/05/Web_services_1.jpg&h=160&w=240&zc=1")
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    color: Colors.white,
    width:100 ,
    height: 100,

    child : Text('i love you '
    ),
    ),
    ]
    ),
    ),),
    ),
    ),
          ],),
       ),
    );
  }
}