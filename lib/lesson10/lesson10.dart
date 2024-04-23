import 'package:flutter/material.dart';

class ContainerOne {
  final double height;
  final double width;
  final Color color;
  final Widget? child;

  ContainerOne({required this.height,
    required this.width,
    required this.color,
    this.child});
}

List<ContainerOne> name = [
  ContainerOne(height: 100, width: 100, color: Colors.black87)
];

class Instagram {
  final String smallImage;
  final String name;
  final String city;
  final String bigImage;
  bool isLike;

  Instagram({
    required this.smallImage,
    required this.name,
    required this.city,
    required this.bigImage,
    required this.isLike,
  });
}

List<Instagram> datas = [
  Instagram(
      smallImage: 'assets/img/car.png',
      name: 'Ford',
      city: 'Bishkek',
      bigImage: 'assets/img/car.png',
      isLike: false),
  Instagram(
      smallImage: 'assets/img/car.png',
      name: 'BMW',
      city: 'Jalal-Abad',
      bigImage: 'assets/img/car.png',
      isLike: false),
];

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                height: 400,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(datas[index].smallImage),
                      ),
                      title: Text(datas[index].name),
                      subtitle: Text(datas[index].city),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(datas[index].bigImage))),
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: () {
                          setState(() {
                            datas[index].isLike = !datas[index].isLike;
                          });
                        },
                            icon: datas[index].isLike ? const Icon(
                              Icons.favorite, color: Colors.red, size: 25,) : const Icon(
                              Icons.favorite_border_sharp, color: Colors.grey, size: 25,))
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

// bookmark
