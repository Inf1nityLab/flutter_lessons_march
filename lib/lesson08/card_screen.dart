import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  Map<String, dynamic> car = {
    'picture': 'assets/img/car.png',
    'name': 'Ford Mustang',
    'value': 4.6,
    'price': 3000000,
    'isLike': false,
  };

  void like() {
    setState(() {
      car['isLike'] = !car['isLike'];
    });
  }

  List<Map<String, dynamic>> cars = [
    {
      'picture': 'assets/img/car.png',
      'name': 'Ford Mustang',
      'value': 4.6,
      'price': 3000000,
      'isLike': false,
    },
    {
      'picture': 'assets/img/car.png',
      'name': 'Ford Mustang',
      'value': 4.6,
      'price': 3000000,
      'isLike': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      children: [
        Container(
          height: 300,
          width: 350,
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(car['picture']),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(car['name']), Text('${car['value']}')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${car['price']} som'),
                    IconButton(
                      onPressed: () {
                        like();
                      },
                      icon: car['isLike']
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_border_sharp,
                              color: Colors.grey,
                            ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 300,
          width: 350,
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(car['picture']),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(car['name']), Text('${car['value']}')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${car['price']} som'),
                    IconButton(
                      onPressed: () {
                        like();
                      },
                      icon: car['isLike']
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_border_sharp,
                              color: Colors.grey,
                            ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 300,
          width: 350,
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(car['picture']),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(car['name']), Text('${car['value']}')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${car['price']} som'),
                    IconButton(
                      onPressed: () {
                        like();
                      },
                      icon: car['isLike']
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_border_sharp,
                              color: Colors.grey,
                            ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
