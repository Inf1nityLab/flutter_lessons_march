import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson12/core/colors.dart';
import 'package:flutter_lesson_march/lesson12/widgets/calendar.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: height * 0.25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
                decoration: const BoxDecoration(
                  color: AppColor.cyanAccent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: const _ContainerBody(),
              ),
            )
          ],
        ));
  }
}

class _ContainerBody extends StatelessWidget {
  const _ContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         CalendarWidget(
          dayNumColor: AppColor.white,
          dayStrColor: AppColor.white,
          containerColor: AppColor.indigo,
          inDayNumColor: AppColor.black,
          inDayStrColor: AppColor.black,
          inContainerColor: AppColor.grey200,)
      ],
    );
  }
}
