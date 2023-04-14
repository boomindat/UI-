import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      required this.myController,
      required this.fieldName,
      required this.myIcon,
      required this.prefixIconColor})
      : super(key: key);
  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        // onChanged: (val) {
        //   _updateText(val);
        // },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter some text";
          }
        },
        controller: myController,
        decoration: InputDecoration(
            labelText: fieldName,
            prefixIcon: Icon(myIcon, color: prefixIconColor),
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple.shade300)),
            labelStyle: TextStyle(color: Colors.deepPurple)));
  }
}
