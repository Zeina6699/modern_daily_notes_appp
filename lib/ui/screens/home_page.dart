import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modern_daily_notes_appp/services/theme_services.dart';
import 'package:modern_daily_notes_appp/ui/screens/notification_screen.dart';
import 'package:modern_daily_notes_appp/ui/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 bool isDarkMode=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  leading: IconButton(
    onPressed: (){ThemeServices().switchTheme();
    Get.to(NotificationScreen(payload: 'title|desc|10:20|dd',));
    },
     icon:const Icon(Icons.arrow_back_ios)),

      ),
      body: customButton(label: 'My Button',onTap: (){},),
    );
    
  }
}
