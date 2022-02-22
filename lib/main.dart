import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/screens/homescreen.dart';
import 'package:event_schedular_flutter/screens/reminders_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EventSchedular());
}

class EventSchedular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ReminderScreen.id: (context) => ReminderScreen(),
        EventScreen.id: (context)=> EventScreen(),

      },
    );
  }
}
