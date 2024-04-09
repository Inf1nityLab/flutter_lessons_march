import 'package:flutter/material.dart';

class TaskApp extends StatefulWidget {
  const TaskApp({super.key});

  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  String name = 'Baias';
  int age = 24;
  double weight = 67.98;
  bool isRained = true;
  var coffee = 78;

  List<String> names = ['Baias', 'Nuraaly', 'Bermet',];
  List<int> ages = [24, 67, 56, 87, 98];
  List<double> weights = [65.87, 65.89];
  List<Widget> widgets = [Icon(Icons.add), Container(height: 100, width: 100, color: Colors.grey,),];
  List<Icon> icons = [Icon(Icons.add)];
  List<Container> containers = [Container(), Container(), Container(),];
  List<dynamic> a = ['String', 34, 34.87, true, Icon(Icons.add) ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Text(names[0]),
          Text(names[1]),
          Text(names[2]),
          widgets[0],
          widgets[1]
        ],
      ),
    );
  }
}