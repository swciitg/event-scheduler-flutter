import 'package:flutter/material.dart';
import 'package:event_schedular_flutter/event_card.dart';
import 'package:event_schedular_flutter/globals/text_themes.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  final List<bool> _isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Expanded(child: MyFonts().heading("EVENTS", Colors.black)),
              Container(
                child: ToggleButtons(
                  children: [
                    MyFonts().togglebutton("Upcoming", Colors.black),
                    MyFonts().togglebutton("Past", Colors.black)
                  ],
                  isSelected: _isSelected,
                  fillColor: const Color(0xFFFEFBFF),
                  onPressed: (int index) {
                    setState(() {
                      _isSelected[index] = !_isSelected[index];
                      _isSelected[1 - index] = !_isSelected[1 - index];
                    });
                  },
                  borderRadius: BorderRadius.circular(4.65934),
                  borderColor: const Color(0x0d3D55BE),
                ),
                decoration: BoxDecoration(
                  color: const Color(0x0d3D55BE),
                  borderRadius: BorderRadius.circular(4.65934),
                ),
                height: 28.0,
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  CustomCard(),
                  CustomCard(),
                  CustomCard(),
                  CustomCard(),
                  CustomCard(),
                  CustomCard(),
                ],
              ))
        ]),
      ),
    );
  }
}
