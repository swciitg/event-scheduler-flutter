import 'package:event_schedular_flutter/bloc/event_bloc.dart';
import 'package:event_schedular_flutter/components/bottom_nav_bar.dart';
import 'package:event_schedular_flutter/components/eventboxes.dart';
import 'package:event_schedular_flutter/model/Event.dart';
import 'package:event_schedular_flutter/model/Rsvp.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/eventboxes.dart';

class AndroidFive extends StatefulWidget {
  static const String id = 'event_screen';

  const AndroidFive({Key? key}) : super(key: key);

  @override
  _AndroidFiveState createState() => _AndroidFiveState();
}

class _AndroidFiveState extends State<AndroidFive> {
  @override
  void initState() {
    final instance = BlocProvider.of<EventBloc>(context);
    instance.add(GetAllRsvp());
    super.initState();
  }

  final List<bool> _isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(calledfrom: 1),
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
                    padding: const EdgeInsets.only(top: 18, right: 24.0),
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
        ],
      ),
    );
  }
}

class AllEvents extends StatelessWidget {
  const AllEvents({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    // const eventBox = EventBoxes(
    //   groupName: "Today",
    //   placeholder: 'secondary text',
    // );
    List<EventBoxes> eventBoxes = [];

    return BlocBuilder<EventBloc, EventState>(builder: (context, state) {
      if(state is EventLoading){
        return Center(child: CircularProgressIndicator(),);
      }
      if (state is RsvpEvent) {
        Rsvp listEvents = state.rsvp;
        listEvents.rsvp!.forEach((element) {
          final eventBox = EventBoxes(
            groupName: element.title,
            placeholder: element.subtitle.toString(),
          );
          eventBoxes.add(eventBox);
        });
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
      } else {
        return Container(
          child: Center(
            child: Text("Didn't Load"),
          ),
        );
      }
    });

    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);
    // eventBoxes.add(eventBox);

    // return ListView.separated(
    //   separatorBuilder: (context, index) {
    //     return const SizedBox(
    //       height: 8.0,
    //     );
    //   },
    //   itemCount: eventBoxes.length,
    //   itemBuilder: (context, index) {
    //     return eventBoxes[index];
    //   },
    // );
  }
}
