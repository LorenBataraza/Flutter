import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class DateTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed:() async{
      final selectedDate= await _selectDateTime(context)??DateTime.now() ;
      print(selectedDate);
      showTimePicker(context: context,
      initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
      );
    },
    child: Text("Choose new date time"),
    )  
    ;
  }

  Future<DateTime> _selectDateTime(BuildContext context) =>
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(Duration(seconds:1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2000)
    );
}
