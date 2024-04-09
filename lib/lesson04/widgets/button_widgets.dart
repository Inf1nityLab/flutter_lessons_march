import 'package:flutter/material.dart';

Widget buttonWidget(String text) {
  return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: Text(text, style: const TextStyle(color: Colors.white),)));
}