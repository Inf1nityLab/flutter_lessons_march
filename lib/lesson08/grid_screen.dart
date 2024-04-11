
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView.builder(itemCount: 6,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.7
      ), itemBuilder: (context, index){
        return Container(
          height: 100,
          width: 100,
          color: Colors.red,
        );
      }),
    );
  }
}

