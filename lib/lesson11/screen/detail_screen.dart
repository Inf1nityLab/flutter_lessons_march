


import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson11/model/category_data.dart';

import '../contants/colors.dart';

class DetailScreen extends StatefulWidget {
  final Category category;
  const DetailScreen({super.key, required this.category});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundclr,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration:  BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage(widget.category.image))),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, color: whiteclr, size: 35,),),
              )
            ],
          ),
          Text(widget.category.name, style: const TextStyle(fontSize: 30, color: whiteclr),)
        ],
      ),
    );
  }
}
