// ignore_for_file: file_names

import 'package:event_schedular_flutter/components/bottom_nav_bar.dart';
import 'package:event_schedular_flutter/components/eventboxes.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

import '../components/eventboxes.dart';

class EventScreen extends StatefulWidget {
  static const String id = 'reminder_screen';

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  void initState() {
    super.initState();
  }

  final List<bool> _isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(calledfrom: 0,),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {},
            icon: kaccount,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: knotificationnone,
            ),
          ),
        ],
        title: RichText(
          text: ktextSpanOne,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 18.0, left: 24.0),
                child: Text(
                  'Events',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.only(top: 18.0, right: 24.0),
              //   child:
              // ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 18, right: 13.0),
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.filter_list_alt,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:18,right: 24.0),
                    child: ToggleButtons(
                      constraints: const BoxConstraints(
                        minWidth: 53,
                        minHeight: 28,
                      ),
                      children: const [
                        Text(
                          "Upcoming",
                          style: TextStyle(
                            fontSize: 9.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Past",
                          style: TextStyle(
                            fontSize: 9.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                      isSelected: _isSelected,
                      selectedColor: const Color(0xffffffff),
                      // disabledColor: const Color(0xffF4F3FC),
                      // borderColor: const Color(0xFFFEFBFF),
                      fillColor: const Color(0xFFF2F1FA),
                      // splashColor: const kclubsideButtonSelectedTabColor,
                      onPressed: (int index) {
                        setState(() {
                          _isSelected[index] = !_isSelected[index];
                          _isSelected[1 - index] = !_isSelected[1 - index];
                        });
                      },
                      borderRadius: BorderRadius.circular(4.66),
                      borderColor: const Color(0x0d3D55BE),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Expanded(child: AllEvents(event: "")),

          AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
            title : Text('REGISTERED EVENTS',style: TextStyle(color: Color.fromRGBO(61, 85, 190, 1),),),
            content: Padding(
                padding : EdgeInsets.all(8),
                child : Container(
                    decoration : BoxDecoration(
                        color: Color.fromRGBO(254, 251, 255, 1),
                        borderRadius: BorderRadius.circular(16)
                    ),
                    height : 328 ,
                    width: MediaQuery.of(context).size.width - 20,
                    child : SingleChildScrollView(
                        child : ListBody(
                          children: [
                            Container(
                                width : 268 ,
                                height : 32 ,
                                decoration : BoxDecoration(
                                  color : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child : Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Search here ',style : TextStyle(color : Color.fromRGBO(223, 225, 250, 1),),),
                                    Expanded( child : SizedBox ()),
                                    Icon(Icons.search),
                                  ],
                                )

                            ),


                            SizedBox(height : 15),

                            Container(
                              child : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('alcher',style: TextStyle(color: Colors.black, ),
                                  ),
                                  Expanded( child : SizedBox(),),
                                  Radio(onChanged: (value) {  },
                                    groupValue: 1,
                                    value: 1 ,),],),),
                            SizedBox(height : 15),

                            Container(
                              child : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('alcher',style: TextStyle(color: Colors.black, ),
                                  ),
                                  Expanded( child : SizedBox(),),
                                  Radio(onChanged: (value) {  },
                                    groupValue: 1,
                                    value: 1 ,),],),),
                            SizedBox(height : 15),

                            Container(
                              child : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('alcher',style: TextStyle(color: Colors.black, ),
                                  ),
                                  Expanded( child : SizedBox(),),
                                  Radio(onChanged: (value) {  },
                                    groupValue: 1,
                                    value: 1 ,),],),),
                            SizedBox(height : 15),

                            Container(
                              child : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('alcher',style: TextStyle(color: Colors.black, ),
                                  ),
                                  Expanded( child : SizedBox(),),
                                  Radio(onChanged: (value) {  },
                                    groupValue: 1,
                                    value: 1 ,),],),),
                            SizedBox(height : 15),

                            Container(
                              child : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('alcher',style: TextStyle(color: Colors.black, ),
                                  ),
                                  Expanded( child : SizedBox(),),
                                  Radio(onChanged: (value) {  },
                                    groupValue: 1,
                                    value: 1 ,),],),),
                            SizedBox(height : 15),

                            Container(
                              child : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('alcher',style: TextStyle(color: Colors.black, ),
                                  ),
                                  Expanded( child : SizedBox(),),
                                  Radio(onChanged: (value) {  },
                                    groupValue: 1,
                                    value: 1 ,),],),),
                          ],
                        )
                    )
                )
            ),
          ),],
      ),
    );

  }

}

class AllEvents extends StatelessWidget {
  const AllEvents({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    const eventBox = EventBoxes(
      groupName: "Today",
      placeholder: 'secondary text',
    );
    List<EventBoxes> eventBoxes = [eventBox];

    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 8.0,
        );
      },
      itemCount: eventBoxes.length,
      itemBuilder: (context, index) {
        return eventBoxes[index];
      },
    );
  }
}
