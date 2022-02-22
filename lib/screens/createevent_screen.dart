import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../components/dateandtime.dart';
import 'package:event_schedular_flutter/globals/text_themes.dart';

class CreateEventScreen extends StatefulWidget {
  static const String id = 'event_screen';

  @override
  _CreateEventScreenState createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  @override
  void initState() {
    super.initState();
  }

  String dropdown = "Alcher Wall";
  String url =
      "https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/91.69900087357323,26.192567184206197,14.5,0,0/320x170?access_token=pk.eyJ1IjoidmlnaG5lc2gzODAyIiwiYSI6ImNreTZkZnJvNjBpZjUydm5vdWZhZHd1OGsifQ.tE3nwt6R4En89O2IxP2Ulw";
  double latitude = 0, longitude = 0;
  var items = [
    "Alcher Wall",
    "Auditorium",
    "Cricket Ground",
    "Manas Community Hall",
    "New SAC Building",
    "Stadium",
    "Swimming Pool"
  ];
  Map<String, List<double>> m = {
    "Alcher Wall": [26.191921992894223, 91.69572472864502],
    "Auditorium": [26.1908946556589, 91.69319844828354],
    "Cricket Ground": [26.19049596812097, 91.69664676854391],
    "Manas Community Hall": [26.189222082129966, 91.69983510906513],
    "New SAC Building": [26.192567184206197, 91.69900087357323],
    "Stadium": [26.192984090676713, 91.69801979691303],
    "Swimming Pool": [26.191172644334124, 91.69926717782712]
  };
  final List<bool> _isSelected = [true, false, false];
  final List<bool> _isSelected2 = [true, false];
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();
  TimeOfDay Duration = const TimeOfDay(hour: 00, minute: 00);
  int _count = 2;

  Future<void> _selectDate(BuildContext context) async {
    var picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  _selectTime(BuildContext context) async {
    var timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }

  _selectTime2(BuildContext context) async {
    var timeOfDay = await showTimePicker(
      context: context,
      initialTime: Duration,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != Duration) {
      setState(() {
        Duration = timeOfDay;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _contatos =
        List.generate(_count, (int i) => const DateTimeCard());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 10, // blur radius
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image:
                              NetworkImage("https://i.ibb.co/MpbDr1T/sky.jpg"),
                          fit: BoxFit.cover,
                        )),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 168.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 10, // blur radius
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.photo,
                                  color: Color(0xff76767F),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    'Change Cover Image',
                                    style: TextStyle(color: Color(0xff76767F)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    color: const Color(0xffF1EFFF),
                    child: MyFonts().capital("EVENT NAME", Colors.black),
                    ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 327.0,
                height: 42.0,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), //color of shadow
                        spreadRadius: 2, //spread radius
                        blurRadius: 10, // blur radius
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ]),
                child: const TextField(
                  cursorHeight: 20.0,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter event name'),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff7A828A),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    color: const Color(0xffF1EFFF),
                    child :MyFonts().capital("WHERE?", Colors.black),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      color: const Color(0xffFFFFFF),
                      // child: const Text('WHERE?', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w500, height: 2.0, letterSpacing: 2.0),),
                    ),
                  ),
                  Container(
                    child: ToggleButtons(
                      children: const [
                        Text(
                          "In Person",
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Virtual",
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Teams",
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                      isSelected: _isSelected,
                      fillColor: const Color(0xFFFFFFFF),
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < _isSelected.length; i++) {
                            if (i == index) {
                              _isSelected[i] = true;
                            } else {
                              _isSelected[i] = false;
                            }
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(4.65934),
                      borderColor: const Color(0xFFE2E8F0),
                      constraints:
                          const BoxConstraints(minWidth: 58.0, minHeight: 25.0),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1EFFF),
                      borderRadius: BorderRadius.circular(4.65934),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  DropdownButton(
                    value: dropdown,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdown = newValue!;

                        latitude = m[dropdown]![0];
                        longitude = m[dropdown]![1];

                        url =
                            "https://api.mapbox.com/styles/v1/mapbox/outdoors-v11/static/$longitude,$latitude,14.5,0,0/320x170?access_token=pk.eyJ1IjoidmlnaG5lc2gzODAyIiwiYSI6ImNreTZkZnJvNjBpZjUydm5vdWZhZHd1OGsifQ.tE3nwt6R4En89O2IxP2Ulw";
                      });
                    },
                    alignment: AlignmentDirectional.centerStart,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 328,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), //color of shadow
                        spreadRadius: 2, //spread radius
                        blurRadius: 10, // blur radius
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ]),
                child: SizedBox(
                  width: 320,
                  height: 170,
                  child: FlutterMap(
                    options: MapOptions(
                        center: LatLng(26.192567184206197, 91.69900087357323),
                        minZoom: 17.0),
                    layers: [
                      TileLayerOptions(
                        urlTemplate: url,
                        additionalOptions: {
                          'accesstoken':
                              'pk.eyJ1IjoidmlnaG5lc2gzODAyIiwiYSI6ImNreTZkZnJvNjBpZjUydm5vdWZhZHd1OGsifQ.tE3nwt6R4En89O2IxP2Ulw',
                          'id': 'mapbox.mapbox-outdoors-v11'
                        },
                      ),
                      MarkerLayerOptions(markers: [
                        Marker(
                            width: 50.0,
                            height: 50.0,
                            point: LatLng(latitude, longitude),
                            builder: (context) => Container(
                                  child: IconButton(
                                      icon: const Icon(Icons.location_on),
                                      color: Colors.red,
                                      iconSize: 50.0,
                                      onPressed: () {}),
                                ))
                      ])
                    ],
                    children: [
                      Container(
                        width: 191.0,
                        height: 52.0,
                        color: Colors.white,
                        child: const Text('Alcher Wall, IIT Guwahati'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    color: const Color(0xffF1EFFF),
                    child :MyFonts().capital("SCHEDULE", Colors.black),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                  Container(
                    child: ToggleButtons(
                      children: const [
                        Text(
                          "Single Event",
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Event Series",
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                      isSelected: _isSelected2,
                      fillColor: const Color(0xFFFFFFFF),
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < _isSelected2.length; i++) {
                            if (i == index) {
                              _isSelected2[i] = true;
                            } else {
                              _isSelected2[i] = false;
                            }
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(4.65934),
                      borderColor: const Color(0xFFE2E8F0),
                      constraints:
                          const BoxConstraints(minWidth: 68.0, minHeight: 25.0),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1EFFF),
                      borderRadius: BorderRadius.circular(4.65934),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                if (_isSelected2[0]) ...[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Time",
                                style: TextStyle(color: Color(0xff76767F)),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width - 220.0,
                              ),
                              const Text(
                                "Date",
                                style: TextStyle(color: Color(0xff76767F)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    _selectTime(context);
                                  },
                                  // child: const Text( '10:10 AM GMT' ,style: TextStyle(color: Color(0xff76767F)),),
                                  child: Text(
                                    "${selectedTime.hour}:${selectedTime.minute}",
                                    style: const TextStyle(
                                        color: Color(0xff76767F)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                  )),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width - 250.0,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    _selectDate(context);
                                  },
                                  // child: const Text("2022-11-18" ,style: TextStyle(color: Color(0xff76767F)),),
                                  child: Text(
                                    "${selectedDate.toLocal()}".split(' ')[0],
                                    style: const TextStyle(
                                        color: Color(0xff76767F)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                  )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                const Text(
                                  "Duration",
                                  style: TextStyle(color: Color(0xff76767F)),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      _selectTime2(context);
                                    },
                                    child: Text(
                                      "${Duration.hour} hours ${Duration.minute} minutes",
                                      style: const TextStyle(
                                          color: Color(0xff76767F)),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ] else ...[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Duration",
                              style: TextStyle(color: Color(0xff76767F)),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  _selectTime2(context);
                                },
                                child: Text(
                                  "${Duration.hour} hours ${Duration.minute} minutes",
                                  style:
                                      const TextStyle(color: Color(0xff76767F)),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, bottom: 20.0),
                              child: Row(
                                children: [
                                  const Text(
                                    "SESSIONS",
                                    style: TextStyle(
                                        color: Color(0xff76767F),
                                        fontSize: 14.0),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: _addNewRow,
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.add,
                                            color: Color(0xffB8C4FF),
                                            size: 20,
                                          ),
                                          Text(
                                            "Add Session",
                                            style: TextStyle(
                                                color: Color(0xffB8C4FF),
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        elevation: 0,
                                      ))
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                const Text("Time"),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 200.0,
                                ),
                                const Text("Date")
                              ],
                            ),
                            Container(
                              height: 400,
                              child: ListView(
                                children: _contatos,
                                scrollDirection: Axis.vertical,
                              ),
                            ),
                          ]),
                    ),
                  )
                ]
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Create Event'),
        icon: const Icon(Icons.check_box),
        backgroundColor: const Color(0xff3D55BE),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _addNewRow() {
    setState(() {
      _count = _count + 1;
    });
  }
}
