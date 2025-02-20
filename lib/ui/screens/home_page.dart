import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/date_time_patterns.dart';
import 'package:modern_daily_notes_appp/constants.dart';
import 'package:modern_daily_notes_appp/controllers/task_controller.dart';
import 'package:modern_daily_notes_appp/services/theme_services.dart';
import 'package:modern_daily_notes_appp/ui/size_config.dart';
import 'package:modern_daily_notes_appp/ui/theme.dart';
import 'package:modern_daily_notes_appp/ui/widgets/Custom_Text.dart';
import 'package:modern_daily_notes_appp/ui/widgets/custom_button.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_daily_notes_appp/ui/widgets/custom_date_picker.dart';
class HomePage extends StatefulWidget {
  HomePage({super.key});
  bool isDarkMode=true;
 var colory=Get.isDarkMode?Colors.white:Colors.black;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar:_appBar(),
      body:Column(
        children: [
          addTakBar(),
             SizedBox(height:20),
          addDateBar(),
       //   showTasks()
        ],
        ),
      );
    
  }
   AppBar _appBar() =>AppBar(
        leading: IconButton(onPressed: (){ThemeServices().switchTheme();},
         icon:Get.isDarkMode? Icon(Icons.wb_sunny_outlined):Icon(Icons.nightlight_round_outlined,
         size: 24,
         color:widget.colory),
         ),
       elevation: 0,
       backgroundColor: context.theme.dialogBackgroundColor,
       actions: const [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/person.jpeg'),
          radius:18),
           SizedBox(width: 10,),
         ] );
         
           addTakBar() {
            return Padding(
              padding:  EdgeInsets.only(right: 10,top: 10,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                   mainAxisAlignment: MainAxisAlignment.center, 
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 CustomText( text: DateFormat.yMMMMd().format(DateTime.now()),fontWeight: FontWeight.w500,fontSize: 17)
                  ,CustomText(text: 'Today',fontWeight: FontWeight.w500,fontSize: 23)
                    ],
                  ),
                  customButton(label: '+ Add Task',
                  onTap:()async
                  {await Get.toNamed('/task');
                 ThemeServices().switchTheme();
                  }) 
                ],
              ),
            );
           }
           
             addDateBar() {
              return const Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomDatePicker(),
                
              );
             }
             
               showTasks() {}
}


