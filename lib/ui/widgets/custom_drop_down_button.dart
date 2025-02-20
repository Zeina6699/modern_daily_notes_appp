import 'package:flutter/material.dart';
import 'package:modern_daily_notes_appp/ui/widgets/Custom_Text.dart';

class CustomDropDownButton<T> extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.list,
    required this.selected,
    required this.onChanged,
  });

  final List<T> list;
  final T selected;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      borderRadius: BorderRadius.circular(10),
      dropdownColor: Colors.blueGrey,
      items: list.map((T value) => DropdownMenuItem<T>(
        value: value,
        child: CustomText(text: value.toString(), color: Colors.white),
      )).toList(),
      icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 32),
      elevation: 2,
      underline: Container(height: 0),
      onChanged: onChanged,
      //value: selected,
    );
  }
}