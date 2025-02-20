import 'package:flutter/material.dart';
import 'package:modern_daily_notes_appp/ui/theme.dart';
import 'package:modern_daily_notes_appp/ui/widgets/Custom_Text.dart';
import 'package:modern_daily_notes_appp/ui/widgets/custom_row.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key, required this.payload});
final String payload;
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}


class _NotificationScreenState extends State<NotificationScreen> {
 String payload='';


 @override
  void initState() {
    // TODO: implement initState
    
    payload=widget.payload;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_ios)),
      title: Text(payload.toString().split('|')[0],
      style:TextStyle(
        
        color:Get.isDarkMode?Colors.white:darkGreyClr
        
        ),
      ),
      backgroundColor: context.theme.dialogBackgroundColor,
     ), body:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              CustomText(text: 'Hello, Zeina',fontWeight: FontWeight.w900,fontSize: 36,color:Get.isDarkMode?Colors.white:darkGreyClr),
              CustomText(text: 'you have a new reminder',color:Get.isDarkMode?Colors.grey[100]:darkGreyClr,fontWeight:FontWeight.w500,fontSize: 18, ),
         const SizedBox(height: 15),                      

              Column(
                children: [
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal:30,vertical: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 600,
                    decoration: BoxDecoration(
                      color:primaryClr,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: SingleChildScrollView(child: Column(
          
                      children: [
                        customRow(icon: Icons.text_format,title: 'Title',text: payload.toString().split('|')[0]),
                        const SizedBox(height: 15),
                        customRow(icon: Icons.description,title:'Description',text:payload.toString().split('|')[1]) ,
                        const SizedBox(height: 15),                      
                        customRow(icon: Icons.calendar_today_outlined,title: 'Date',text:payload.toString().split('|')[2])
                      ],
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

