import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson11/model/category_data.dart';
import 'package:flutter_lesson_march/lesson11/screen/main_screen.dart';

import '../contants/colors.dart';
import '../model/delivery_model.dart';

class DetailScreen extends StatefulWidget {
  final DistInfo delivery;

  const DetailScreen({super.key, required this.delivery});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int number = 1;
  int? _value = 1;


  void plus(){
    setState(() {
      number +=1;
    });
  }

  void minus(){
    if(number > 1){
      setState(() {
        number -=1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: NetworkImage(widget.delivery.image),
                        fit: BoxFit.fill)),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: whiteclr,
                    size: 35,
                  ),
                ),
              )
            ],
          ),
          Text(
            widget.delivery.name,
            style: const TextStyle(fontSize: 30, color: whiteclr),
          ),
          const SizedBox(
            height: 90,
          ),
          Row(
            children: [
              Text(
                widget.delivery.price,
                style: const TextStyle(fontSize: 30, color: whiteclr),
              ),
              Expanded(child: Container()),
              button(Icons.remove, (){minus();}),
              Text(
                '$number',
                style: const TextStyle(fontSize: 30, color: whiteclr),
              ),
              button(Icons.add, (){plus();}),
            ],
          ),
          Row(
            children: [
              const CircleAvatar(radius: 30,),
              const Text(
                'Chees creame',
                style: TextStyle(fontSize: 20, color: whiteclr),
              ),
              Text(
                widget.delivery.price,
                style: const TextStyle(fontSize: 20, color: whiteclr),
              ),
              Radio(value: 1, groupValue: _value, onChanged: (int? value){
                setState(() {
                  _value = value;
                });
              })
            ],
          ),
          Row(
            children: [
              const CircleAvatar(radius: 30,),
              const Text(
                'Chees creame',
                style: TextStyle(fontSize: 20, color: whiteclr),
              ),
              Text(
                widget.delivery.price,
                style: const TextStyle(fontSize: 20, color: whiteclr),
              ),
              Radio(value: 2, groupValue: _value, onChanged: (int? value){
                setState(() {
                  _value = value;
                });
              })
            ],
          ),
        ],
      ),

    );
  }

  Widget button(IconData iconData, Function() onTap) {
    return InkWell(
        onTap: onTap,
        child: CircleAvatar(
          backgroundColor: lbackgroundclr,
          radius: 15,
          child: Center(
              child: Icon(
            iconData,
            color: Colors.white,
          )),
        ));
  }
}
