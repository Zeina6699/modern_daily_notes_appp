
import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  customTextFormField({super.key,
  this.autofocus,
  this.textColor,
  this.controller,
  this.cursorColor,
  this.enabledBorderColor,
this.enabledBorderWidth,
this.focusedBorderColor,
this.focusedBorderWidth,
this.textFontSize,
this.textFontWeight,
this.hintColor,
this.hintText,
this.hintfontSize,
this.hintfontWeight,
this.readOnly
  });
  bool? readOnly;
  Color? textColor;
  double? textFontSize;
  FontWeight? textFontWeight;
  Color? cursorColor;
  bool? autofocus;
  TextEditingController? controller;
  String? hintText;
  Color? hintColor;
  double? hintfontSize;
  FontWeight? hintfontWeight;
  double? enabledBorderWidth;
  double? focusedBorderWidth;
  Color? enabledBorderColor;
  Color? focusedBorderColor;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly:readOnly??false ,
      style: TextStyle(color:textColor ,fontSize:textFontSize ,fontWeight:textFontWeight ),
      cursorColor:cursorColor ,
      autofocus:autofocus??false ,
      controller:controller ,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color:hintColor,fontWeight:hintfontWeight ,fontSize:hintfontSize )
   ,  
     enabledBorder: OutlineInputBorder(
     borderSide: BorderSide(
      width:enabledBorderWidth??10 ,
      color:enabledBorderColor??Colors.black 
     )
     ),
     focusedBorder: OutlineInputBorder(
     borderSide: BorderSide(
      width:focusedBorderWidth??10 ,
      color:focusedBorderColor??Colors.black 
     )
     ),
      ),
    
      
    );
  }
}
