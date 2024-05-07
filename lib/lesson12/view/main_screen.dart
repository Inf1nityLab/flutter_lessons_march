import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson12/core/colors.dart';
import 'package:flutter_lesson_march/lesson12/view/add_screen.dart';
import 'package:flutter_lesson_march/lesson12/widgets/icon_button_widget.dart';
import '../widgets/calendar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.25,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButtonWidget(iconData: Icons.menu, onPressed: () {}),
                      IconButtonWidget(
                          iconData: Icons.add_box,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AddScreen()));
                          }),
                    ],
                  ),
                  const CalendarWidget(
                      dayNumColor: AppColor.indigoAccent,
                      dayStrColor: AppColor.indigoAccent,
                      containerColor: AppColor.white,
                      inDayNumColor: AppColor.white,
                      inDayStrColor: AppColor.white,
                      inContainerColor: AppColor.indigoAccent ,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: const _ContainerBody(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ContainerBody extends StatelessWidget {
  const _ContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      "Today's Task",
                      style: TextStyle(
                          fontSize: 25,
                          color: AppColor.black,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                }
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColor.indigo,
                            child: Center(
                              child: Icon(
                                Icons.done,
                                color: AppColor.white,
                                size: 15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          for (int i = 0; i <= 10; i++)
                            Container(
                              height: 5,
                              width: 2,
                              margin: const EdgeInsets.only(bottom: 5),
                              color: AppColor.indigo,
                            ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: width * 0.8,
                      height: 150,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColor.cyanAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '09:00-09:30',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColor.grey),
                          ),
                          const Text(
                            'Learn flutter ',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: AppColor.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '30 min',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.grey),
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.indigoAccent),
                                  child: const Text(
                                    'Done',
                                    style: TextStyle(color: AppColor.white),
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
