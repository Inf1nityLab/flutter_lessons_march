import 'package:flutter/material.dart';

class Lesson08 extends StatefulWidget {
  const Lesson08({super.key});

  @override
  State<Lesson08> createState() => _Lesson08State();
}

class _Lesson08State extends State<Lesson08> {
  String name = 'Baias';
  int age = 24;
  double weight = 67.98;
  bool isRained = true;
  var coffee = 78;

  List<String> names = [
    'Baias',
    'Nuraaly',
    'Bermet',
  ];

  Map<String, dynamic> good = {
    'name': 'BMW',
    'price': 30000,
    'isLike': false,
    'picture': '',
  };

  List<Map<String, dynamic>> goods = [
    {
      'name': 'BMW',
      'price': 30000,
      'isLike': false,
      'picture': '',
    },
    {
      'name': 'BMW',
      'price': 30000,
      'isLike': false,
      'picture': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          print(good);
          good['description'] = 'sdhkjfhdskjfhkjdshfk';
          print(good);
          print(good['name']);
          good.remove('description');
          print(good);
          good['name'] = 'Mercedes';
          print(good);
          print(good.containsKey('name'));
          print(good.containsValue('BMW'));
          print(good.keys.toList());
        }, child: Text('Map')),
      ),
    );
  }
}
