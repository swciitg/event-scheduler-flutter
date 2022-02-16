import 'package:flutter/material.dart';
import 'package:event_schedular_flutter/subsc_card.dart';


class Subscriptions extends StatefulWidget {
  const Subscriptions({ Key? key }) : super(key: key);

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
              Row(children: const [
                Text(
                  'SUBSCRIPTIONS',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 2,
                    fontSize: 20,
                    letterSpacing: 2.0,
                  ),
                )
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
                      children: const [
                        Text(
                          "Boards",
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Clubs",
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Fests",
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                      isSelected: _isSelected,
                      fillColor: const Color(0xFFFEFBFF),
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