import 'package:flutter/material.dart';
import 'package:modern_daily_notes_appp/ui/screens/notification_screen.dart';


void main() {
  runApp(const DailyNotes());
}

class DailyNotes extends StatelessWidget {
  const DailyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:NotificationScreen()
    );
  }
}
