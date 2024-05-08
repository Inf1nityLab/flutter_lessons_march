import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson12/core/colors.dart';
import 'package:flutter_lesson_march/lesson12/widgets/calendar.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
    ));
  }
}

class _ContainerBody extends StatefulWidget {
  const _ContainerBody({super.key});

  @override
  State<_ContainerBody> createState() => _ContainerBodyState();
}

class _ContainerBodyState extends State<_ContainerBody> {
  TimeOfDay startTime = const TimeOfDay(hour: 10, minute: 50);
  TimeOfDay endTime = const TimeOfDay(hour: 10, minute: 15);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CalendarWidget(
          dayNumColor: AppColor.white,
          dayStrColor: AppColor.white,
          containerColor: AppColor.indigo,
          inDayNumColor: AppColor.black,
          inDayStrColor: AppColor.black,
          inContainerColor: AppColor.grey200,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Task name',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColor.black, fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: const TextStyle(
              fontWeight: FontWeight.w800, color: AppColor.black, fontSize: 20),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            fillColor: AppColor.grey200,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TimerWidget(
              text: 'Start time',
              onPressed: () async {
                TimeOfDay? newTime = await showTimePicker(
                    context: context, initialTime: startTime);

                if (newTime == null) return;

                setState(() => startTime = newTime);
              },
              time: '${startTime.hour}:${startTime.minute}',
            ),
            TimerWidget(
              text: 'End Time',
              onPressed: () async{

              },
              time: '${endTime.hour}: ${endTime.minute}',
            ),
          ],
        )
      ],
    );
  }
}

class TimerWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String time;

  const TimerWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.time});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: AppColor.black, fontSize: 25),
        ),
        SizedBox(
          height: 60,
          width: width * 0.4,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.grey200,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: AppColor.black,
                      fontSize: 20),
                ),
                const Icon(
                  Icons.watch_later_outlined,
                  color: AppColor.grey,
                  size: 30,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
