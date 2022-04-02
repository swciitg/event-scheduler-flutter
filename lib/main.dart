import 'package:event_schedular_flutter/bloc/event_bloc.dart';
import 'package:event_schedular_flutter/components/datetime.dart';
import 'package:event_schedular_flutter/components/overlaylearn.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/Android_twenty_six.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/android_thirty.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/android_thirty_one.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/new_announcement_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/new_mail_screen.dart';
import 'package:event_schedular_flutter/screens/android_five.dart';
import 'package:event_schedular_flutter/screens/android_two.dart';
import 'package:event_schedular_flutter/screens/android_four.dart';
import 'package:event_schedular_flutter/screens/loginsamle.dart';
import 'package:event_schedular_flutter/services/event_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(EventSchedular());
}

class EventSchedular extends StatelessWidget {
  const EventSchedular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => EventBloc(EventService()),
        child: const LoginSample(),
      ),
    );
  }
}
// AndroidTwo.id: (context) => AndroidTwo(),
//         AndroidFour.id: (context) => AndroidFour(),
//         AndroidFive.id: (context) => AndroidFive(),
//         AndroidThirty.id: (context) => const AndroidThirty(),
//         AndroidTwentySix.id: (context) => const AndroidTwentySix(),
//         AndroidThirtyOne.id: (context) => const AndroidThirtyOne(),
//         DateTimeLearn.id: (context) =>  DateTimeLearn(),
//         NewAnnouncementScreen.id: (context) => const NewAnnouncementScreen(),
//         NewMailScreen.id: (context) => const NewMailScreen(),
//         Example2.id: (context) => const Example2(),
