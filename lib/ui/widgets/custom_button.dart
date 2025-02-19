import 'package:flutter/material.dart';
import 'package:modern_daily_notes_appp/ui/theme.dart';
import 'package:modern_daily_notes_appp/ui/widgets/Custom_Text.dart';

class customButton extends StatelessWidget {
  const customButton({super.key, required this.label, this.onTap});
 final String label;
 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryClr,
            borderRadius: BorderRadius.circular(10)
          ),
          width: 100,
          height: 45,
          child: CustomText(text: label,color: Colors.white,textAlign: TextAlign.center,)
        ),
      ),
    );
  }
}
