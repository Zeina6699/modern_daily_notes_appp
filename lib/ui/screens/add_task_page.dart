import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_daily_notes_appp/controllers/task_controller.dart';
import 'package:intl/intl.dart';
import 'package:modern_daily_notes_appp/ui/theme.dart';
import 'package:modern_daily_notes_appp/ui/widgets/Custom_Text.dart';
import 'package:modern_daily_notes_appp/ui/widgets/custom_button.dart';
import 'package:modern_daily_notes_appp/ui/widgets/custom_drop_down_button.dart';
import 'package:modern_daily_notes_appp/ui/widgets/custom_input_field.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

final TaskController taskController = Get.put(TaskController());
final TextEditingController titleController = TextEditingController();
final TextEditingController noteController = TextEditingController();
DateTime selectedDate = DateTime.now();
String startDate = DateFormat('hh:mm a').format(DateTime.now()).toString();
String endDate = DateFormat('hh:mm a').format(DateTime.now().add(const Duration(minutes: 15))).toString();

int selectedColor=0;
int selectedReminder = 5;
String selectedReapeat = 'None';

List<int> remindeList = [5, 10, 15, 20];
List<String> reapeatList = ['None', 'Daily', 'Weekly', 'Monthly'];

class _AddTaskPageState extends State<AddTaskPage> {
  void updateReminder(int? newReminder) {
    if (newReminder != null) {
      setState(() {
        selectedReminder = newReminder;
      });
    }
  }

  void updateRepeat(String? newRepeat) {
    setState(() {
      selectedReapeat = newRepeat ?? selectedReapeat; // استخدام القيمة السابقة إذا كانت null
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        String formattedTime = '${picked.hour}:${picked.minute} ${picked.period == DayPeriod.am ? 'AM' : 'PM'}';
        if (isStartTime) {
          startDate = formattedTime;
        } else {
          endDate = formattedTime;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomText(text: 'Add Task',fontSize: 26,fontWeight: FontWeight.w800,),
              const SizedBox(height: 30),
              const CustomInputField(title: 'Title', hint: 'Enter title here'),
              CustomInputField(title: 'Note', hint: 'Enter note here', controller: noteController),
              CustomInputField(
                title: 'Date',
                hint: DateFormat.yMd().format(selectedDate),
                widget: IconButton(
                  onPressed: () => _selectDate(context),
                  icon: const Icon(Icons.calendar_today_outlined),
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomInputField(
                      title: 'Start Time',
                      hint: startDate,
                      widget: IconButton(
                        icon: const Icon(Icons.access_time_rounded, color: Colors.grey),
                        onPressed: () => _selectTime(context, true),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomInputField(
                      title: 'End Time',
                      hint: endDate,
                      widget: IconButton(
                        icon: const Icon(Icons.access_time_rounded, color: Colors.grey),
                        onPressed: () => _selectTime(context, false),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomInputField(
                title: 'Remind',
                hint: '$selectedReminder minutes early',
                widget: Row(
                  children: [
                    CustomDropDownButton<int>(
                      onChanged: (newReminder) => updateReminder(newReminder),
                      list: remindeList,
                      selected: selectedReminder,
                    ),
                     const SizedBox(width: 5,)
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CustomInputField(
                title: 'Repeat',
                hint: selectedReapeat,
                widget: Row(
                  children: [
                    CustomDropDownButton<String>(
                      onChanged: (newRepeat) => updateRepeat(newRepeat),
                      list: reapeatList,
                      selected: selectedReapeat,
                    ),
                    const SizedBox(width: 5,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    colorPalette(),
                    const customButton(label: 'Create Task')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() =>AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon:Icon(Icons.arrow_back_ios,size: 24, color:Get.isDarkMode?Colors.white:darkGreyClr)),
       elevation: 0,
       backgroundColor: context.theme.dialogBackgroundColor,
       actions: const [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/person.jpeg'),
          radius:18),
           SizedBox(width: 10,),
         ] );
        
       
       
     

Column colorPalette(){
  return Column(
    children:[
      CustomText(text: 'Color',)
      ,GestureDetector(
        onTap: (){},
        child:Padding(
          padding:const  EdgeInsets.all(15),
          child:
          Row(children: List<Widget>.generate(3,(index)=>
          GestureDetector(
            onTap: (){
           setState(() {
             selectedColor=index;
           });
            },
         child: Padding(
           padding: const EdgeInsets.only(right: 6),
           child:  CircleAvatar(
            backgroundColor:
              index==0?primaryClr:
              index==1?pinkClr:
              orangeClr
              ,radius: 16,
            child:index==selectedColor? Icon(Icons.done,size: 16,color: Colors.white,):null,
             ),
         ) ),
        )))
      )
    ]
  );
}}