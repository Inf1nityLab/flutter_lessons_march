import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson04/constants/colors.dart';
import 'package:flutter_lesson_march/lesson04/constants/peremenniye.dart';
import 'package:flutter_lesson_march/lesson04/widgets/button_widgets.dart';

class Lesson04 extends StatelessWidget {
  const Lesson04({super.key});

  @override
  Widget build(BuildContext context) {
    String fire = 'fire';
    String sword = 'sword';
    String gun = 'gun';
    return Scaffold(
      backgroundColor: blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
          Text('$age'),
          Text('$weight'),
          Text('$isSun'),
          Text('$isRained'),
          elevatedButtonWidget(fire, () {
            attack(fire);
          }),
          elevatedButtonWidget(sword, () {
            attack(sword);
          }),
          elevatedButtonWidget(gun, () {
            attack(gun);
          }),
          buttonWidget('Login'), 
          buttonWidget('See details')
        ],
      ),
    );
  }

  void attack(
    String text,
  ) {
    print(text);
  }

  Widget elevatedButtonWidget(String name, Function() onPressed) {
    return ElevatedButton(onPressed: onPressed, child: Text(name));
  }

  
}
