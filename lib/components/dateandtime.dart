import 'package:flutter/material.dart';

class DateTimeCard extends StatefulWidget {
  const DateTimeCard({Key? key}) : super(key: key);

  @override
  State<DateTimeCard> createState() => _DateTimeCardState();
}

class _DateTimeCardState extends State<DateTimeCard> {
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                _selectTime(context);
              },
              // child: const Text( '10:10 AM GMT' ,style: TextStyle(color: Color(0xff76767F)),),
              child: Text(
                "${selectedTime.hour}:${selectedTime.minute}",
                style: const TextStyle(color: Color(0xff76767F)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              )),
          Container(
            width: MediaQuery.of(context).size.width - 250.0,
          ),
          ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              // child: const Text("2022-11-18" ,style: TextStyle(color: Color(0xff76767F)),),
              child: Text(
                "${selectedDate.toLocal()}".split(' ')[0],
                style: const TextStyle(color: Color(0xff76767F)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              )),
        ],
      ),
    );
  }
}
