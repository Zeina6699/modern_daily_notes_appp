import 'package:flutter/material.dart';
import 'package:modern_daily_notes_appp/services/theme_services.dart';
import 'package:modern_daily_notes_appp/ui/screens/add_task_page.dart';
import 'package:modern_daily_notes_appp/ui/screens/home_page.dart';
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
      themeMode: ThemeServices().theme,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/task':(context)=>AddTaskPage(),
        '/home':(context)=>HomePage(),
        '/notifi':(context)=>AddTaskPage()
      },
      initialRoute: '/home',
      // NotificationScreen(payload: 'title|desc|10:20|dd',)
    );
  }
}
