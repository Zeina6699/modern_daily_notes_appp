import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_daily_notes_appp/ui/size_config.dart';
import 'package:modern_daily_notes_appp/ui/theme.dart';
import 'package:modern_daily_notes_appp/ui/widgets/Custom_Text.dart';
import 'package:modern_daily_notes_appp/ui/widgets/Custom_Text_Form_Field.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key, required this.title, required this.hint, this.controller, this.widget});
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
      margin: const EdgeInsets.only(left: 18,right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
      
            Padding(
              padding: const EdgeInsets.only(left:3),
              child: CustomText(text: title,fontWeight: FontWeight.w600,fontSize:18,color:Get.isDarkMode?Colors.white:darkGreyClr),
            ),
      
          Container(
              padding: const EdgeInsets.only(left:5),
               margin: const EdgeInsets.only(top: 8),
              height: 52,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: Colors.grey)),
               child:Row(children: [
                 Expanded( 
                  child:customTextFormField(
                  autofocus:false ,
                  textColor:Get.isDarkMode?Colors.grey[300]:darkGreyClr ,
                  textFontSize: 14,
                  textFontWeight:FontWeight.w200 ,
                  readOnly: widget!=null?true:false, 
                  cursorColor:Get.isDarkMode?Colors.grey[100]:Colors.grey[700],
                  controller: controller,
                  hintText: hint,
                  hintColor:Get.isDarkMode?Colors.grey[300]:darkGreyClr ,
                  hintfontSize: 14,
                  hintfontWeight:FontWeight.w500, 
                  enabledBorderColor: context.theme.scaffoldBackgroundColor ,
                  enabledBorderWidth:0 ,
                  focusedBorderColor: context.theme.scaffoldBackgroundColor ,
                  focusedBorderWidth: 0,     
                 )), 
                   widget??Container()]))])),
    );
        
  }
}
