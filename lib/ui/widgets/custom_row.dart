import 'package:flutter/material.dart';
import 'package:modern_daily_notes_appp/ui/widgets/Custom_Text.dart';

class customRow extends StatelessWidget {
  customRow({
    super.key,
    this.icon,
    this.title,
    required this.text
  });
  IconData? icon;
  String? title;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon!,size: 30,color: Colors.white,),
        const SizedBox(width: 100),
        Column(
          children: [
            CustomText(text:title!,color: Colors.white,fontSize: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(text:text,color: Colors.white,textAlign: TextAlign.justify,),
            ),
          ],
        )
    
      ],
    );
  }
}
