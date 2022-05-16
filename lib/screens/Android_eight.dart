// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Android8 extends StatelessWidget {
  const Android8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Container(
                width: 328,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.67),
                  image: DecorationImage(
                    image: AssetImage('assets/image_event.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Event Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Date Time',
                          style: TextStyle(
                            color: Color.fromRGBO(221, 225, 255, 1),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'location',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                alignment: FractionalOffset.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    SizedBox(
                      height: 30,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xFF2E3233),
                          fontSize: 25,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Related Images: businessmancomputerofficepeopleworkmeetingsuccessperson. Businessman photos for download. All pictures are free to use.',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 64,
                    width: 328,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/cardimage.jpeg'),
                      ),
                      title: Text('Name'),
                      subtitle: Text('details detailsff'),
                      trailing: Container(
                        width: 94.12,
                        height: 31.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'REGISTER',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      child: Text(
                    'RESOURCES',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
                  Card(
                    child: ListTile(
                      title: Text('Name'),
                      subtitle: Text('co host'),
                      trailing: Container(
                        width: 100,
                        height: 31.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'DOWNLOAD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Name'),
                      subtitle: Text('co host'),
                      trailing: Container(
                        width: 100,
                        height: 31.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'DOWNLOAD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Name'),
                      subtitle: Text('co host'),
                      trailing: Container(
                        width: 100,
                        height: 31.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'DOWNLOAD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/cardimage.jpeg'),
                      ),
                      title: Text('Name'),
                      trailing: SizedBox(
                        width: 40,
                        height: 20,
                        child: const DecoratedBox(
                          child: Text(
                            'HOST',
                            style: TextStyle(fontSize: 12),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/cardimage.jpeg'),
                      ),
                      title: Text('Name'),
                      trailing: SizedBox(
                        width: 40,
                        height: 20,
                        child: const DecoratedBox(
                          child: Text(
                            'HOST',
                            style: TextStyle(fontSize: 12),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: 82,
                      height: 30,
                      child: Text(
                        'LOCATION',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: 113,
                      height: 30,
                      child: Text(
                        'SOCIAL LINK',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.alarm,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.menu, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.menu,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.menu, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
