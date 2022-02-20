import 'package:flutter/material.dart';
import 'package:event_schedular_flutter/subsc_card.dart';
import 'package:event_schedular_flutter/globals/text_themes.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  final List<bool> _isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Row(children: [
                MyFonts().heading("SUBSCRIPTIONS", Colors.black),
              ]),
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
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ToggleButtons(
                      children: [
                        MyFonts()
                            .togglebutton("Boards", const Color(0xff27272E)),
                        MyFonts()
                            .togglebutton("Clubs", const Color(0xff27272E)),
                        MyFonts()
                            .togglebutton("Fests", const Color(0xff27272E)),
                      ],
                      isSelected: _isSelected,
                      fillColor: const Color(0xFFFEFBFF),
                      constraints:
                          const BoxConstraints(minWidth: 84.0, minHeight: 42.0),
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
                      borderColor: const Color(0x0d3D55BE),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0x0d3D55BE),
                      borderRadius: BorderRadius.circular(4.65934),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
