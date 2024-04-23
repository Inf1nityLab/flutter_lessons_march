import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson11/model/category_data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Text()
            const SizedBox(
              height: 70,
            ),
            rowWidget(),
            const SizedBox(
              height: 10,
            ),
            category(),
            //Text()
            SizedBox(height: 90,),
            delivery()
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget appBar() {
  return AppBar(
    backgroundColor: Colors.cyan,
    leading: containerWidget(Icons.add_chart),
    title: const Column(
      mainAxisSize: MainAxisSize.min,
      children: [Text('Delivery'), Text('02-75 Bishkek')],
    ),
    actions: [
      Container(
        height: 60,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image: AssetImage(''))),
      ),
      const SizedBox(
        width: 10,
      )
    ],
  );
}

Widget rowWidget() {
  return Row(
    children: [
      const Expanded(
        child: TextField(
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
      containerWidget(Icons.chat)
    ],
  );
}

Widget containerWidget(IconData iconData) {
  return Container(
    height: 60,
    width: 40,
    margin: const EdgeInsets.only(left: 5, right: 5),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Icon(iconData),
  );
}

Widget category() {
  return SizedBox(
    height: 120,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryData.length,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(40)),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(categoryData[index].image),
                ),
                Text(categoryData[index].name)
              ],
            ),
          );
        }),
  );
}


Widget delivery(){
  return SizedBox(
    height: 400,
    child: ListView.builder(itemBuilder: (context, index){
      return Container(
        width: 350,
        color: Colors.black,
        margin: const EdgeInsets.only(right: 10),
      );
    }),
  );
}
