import 'package:flutter/material.dart';
import 'package:modern_daily_notes_appp/ui/screens/notification_screen.dart';
import 'package:get/get.dart';
import 'package:modern_daily_notes_appp/ui/theme.dart';
void main() {
  runApp(const DailyNotes());
}

class DailyNotes extends StatelessWidget {
  const DailyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme:Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:const NotificationScreen(payload: 'title|desc|10:20|dd',)
    );
  }
}
