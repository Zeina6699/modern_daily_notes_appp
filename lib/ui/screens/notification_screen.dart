import 'package:flutter/material.dart';
import 'package:modern_daily_notes_appp/ui/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios)),
      ),
      body:Column(
        children: [
          Text('Hello , Zeina',style: TextStyle(color: Colors.black,)),
          Text('you have a new reminder'),
          Column(
            children: [
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal:30),
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 600,
                decoration: BoxDecoration(
                  color:primaryClr,
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
