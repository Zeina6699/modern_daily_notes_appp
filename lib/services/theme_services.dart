import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
class ThemeServices {

final GetStorage box=GetStorage();
final key='isDarkMode';

bool loadThemeFromBox(){
  return box.read(key)??false;
  
}

 saveThemeToBox(bool  isDarkMode){
  box.write(key, isDarkMode);
}





ThemeMode get theme=>loadThemeFromBox()?ThemeMode.light:ThemeMode.dark;

void switchTheme(){
  Get.changeThemeMode(loadThemeFromBox()?ThemeMode.light:ThemeMode.dark);
   saveThemeToBox(!loadThemeFromBox());
}}
  

