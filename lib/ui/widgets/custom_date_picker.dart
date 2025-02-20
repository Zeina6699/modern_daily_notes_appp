import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:modern_daily_notes_appp/ui/theme.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({
    super.key,
  });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime selectedDate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return DatePicker(
      initialSelectedDate: selectedDate,
        height: 100,
        width: 60,
      DateTime.now(),
      selectedTextColor: Colors.white, 
      selectionColor: primaryClr,
       monthTextStyle: GoogleFonts.lato(
        textStyle: 
        TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,

        )),
      dayTextStyle:GoogleFonts.lato(
        textStyle: TextStyle(
         color: Colors.grey,
          fontWeight: FontWeight.bold,

        )) ,
      dateTextStyle: GoogleFonts.lato(
        textStyle:const TextStyle(
          fontSize: 23,
          color: Colors.grey,
          fontWeight: FontWeight.bold,)), 
      onDateChange: (newDate){
        setState(() {
          selectedDate=newDate;
        });
      },
      );
  }
}