import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson11/contants/colors.dart';
import 'package:flutter_lesson_march/lesson11/model/category_data.dart';
import 'package:flutter_lesson_march/lesson11/model/delivery_model.dart';
import 'package:flutter_lesson_march/lesson11/screen/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'What would you like\nto order',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: whiteclr),
            ),
            const SizedBox(
              height: 20,
            ),
            rowWidget(),
            const SizedBox(
              height: 10,
            ),
            category(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Fastest delivery',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w400, color: whiteclr),
            ),
            const SizedBox(
              height: 20,
            ),
            delivery()
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget appBar() {
  return AppBar(
    backgroundColor: backgroundclr,
    leading: containerWidget(Icons.sort_rounded),
    title: const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Delivery',
          style: TextStyle(color: whiteclr),
        ),
        Text(
          '02-75 Bishkek',
          style: TextStyle(color: primaryclr),
        )
      ],
    ),
    centerTitle: true,
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
      Expanded(
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: lbackgroundclr,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: deepPurple, width: 2),
                  borderRadius: BorderRadius.circular(15)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: grey, width: 2),
                  borderRadius: BorderRadius.circular(15)),
              hintText: 'Find restaurant or food hello',
              hintStyle: const TextStyle(
                  fontSize: 23, color: grey, overflow: TextOverflow.ellipsis),
              prefixIcon: const Icon(
                Icons.search,
                color: grey,
                size: 30,
              )),
        ),
      ),
      containerWidget(Icons.tune)
    ],
  );
}

Widget containerWidget(IconData iconData) {
  return Container(
    height: 60,
    width: 40,
    margin: const EdgeInsets.only(left: 5, right: 5),
    decoration: BoxDecoration(
        color: lbackgroundclr, borderRadius: BorderRadius.circular(10)),
    child: Icon(
      iconData,
      color: whiteclr,
    ),
  );
}

Widget category() {
  return SizedBox(
    height: 150,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: smallCon.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 90,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: lbackgroundclr, borderRadius: BorderRadius.circular(40)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(smallCon[index].image),
                ),
                Text(
                  smallCon[index].name,
                  style: const TextStyle(fontSize: 20, color: whiteclr),
                )
              ],
            ),
          );
        }),
  );
}

Widget delivery() {
  return SizedBox(
    height: 300,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: smallCon.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(delivery: smallCon[index])));
            },
            child: Container(
              width: 300,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: lbackgroundclr,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        decoration:  BoxDecoration(
                          color: Colors.grey,
                            image: DecorationImage(
                                image: NetworkImage(bigCon[index].image))),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, color: whiteclr, size: 35,),),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                   Row(
                    children: [
                       Text(smallCon[index].name, style: const TextStyle(fontSize: 20, color: whiteclr, fontWeight: FontWeight.w600),),
                      Expanded(child: Container()),
                      const Icon(Icons.timer_outlined, color: primaryclr,),
                       //Text(smallCon[index], style: const TextStyle(fontSize: 20, color: whiteclr, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                 Row(children: [
                   const Icon(Icons.star, color: Colors.yellow,),
                   const SizedBox(width: 5,),
                   Text(smallCon[index].ratting, style: const TextStyle(fontSize: 20, color: whiteclr, fontWeight: FontWeight.w500),),
                 ],)
                ],
              ),
            ),
          );
        }),
  );
}
