import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson11/model/category_data.dart';
import 'package:flutter_lesson_march/lesson11/screen/main_screen.dart';

import '../contants/colors.dart';
import '../model/data.dart';
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

  void plus() {
    setState(() {
      number += 1;
    });
  }

  void minus() {
    if (number > 1) {
      setState(() {
        number -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: NetworkImage(widget.delivery.image),
                      fit: BoxFit.fill),
                ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.delivery.name,
                  style: const TextStyle(fontSize: 30, color: whiteclr),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.delivery.ratting,
                      style: const TextStyle(
                          fontSize: 20,
                          color: whiteclr,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      widget.delivery.price,
                      style: const TextStyle(fontSize: 30, color: whiteclr),
                    ),
                    Expanded(child: Container()),
                    button(Icons.remove, () {
                      minus();
                    }),
                    Text(
                      '$number',
                      style: const TextStyle(fontSize: 30, color: whiteclr),
                    ),
                    button(Icons.add, () {
                      plus();
                    }),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.delivery.description,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  maxLines: 3,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Choose Additive',
                  style: const TextStyle(fontSize: 30, color: whiteclr),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                               CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(data[index].image),
                              ),
                              const SizedBox(width: 7,),
                               Text(
                                data[index].name,
                                style: const TextStyle(fontSize: 20, color: whiteclr),
                              ),
                              Expanded(child: Container()),
                              Text(
                                  '${data[index].price}',
                                style: const TextStyle(
                                    fontSize: 20, color: whiteclr),
                              ),
                              const SizedBox(width: 7,),
                              Radio(
                                  value: index,
                                  groupValue: _value,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  }),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          )
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



