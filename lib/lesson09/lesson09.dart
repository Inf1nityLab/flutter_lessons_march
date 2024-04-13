

import 'package:flutter/material.dart';


class Lesson09 extends StatefulWidget {
  const Lesson09({super.key});

  @override
  State<Lesson09> createState() => _Lesson09State();
}

class _Lesson09State extends State<Lesson09> {

  String name = 'Baias';
  List<String> namesList = ['Baias', 'Nuraaly', 'Baias'];
  Map<String, dynamic> person = {'name': 'baias', };
  Set<String> namesSet = {'Baias', 'Nuraaly'};


  void set(){
    print(namesSet);
    print(namesSet.remove('Baias'));
    print(namesSet.add('Meerim'));
    print(namesSet.length);

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          set();
        }, child: const Text('Set')),
      )
    );
  }
}
