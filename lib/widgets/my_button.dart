import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.onPress}) : super(key: key);
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
          onPressed: onPress,
          child: Text(
            "Submit form".toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.deepPurple),
          ),
        ));
  }
}
