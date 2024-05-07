import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson12/core/colors.dart';

class CalendarWidget extends StatelessWidget {
  final Color dayNumColor;
  final Color dayStrColor;
  final Color containerColor;
  final Color inDayNumColor;
  final Color inDayStrColor;

  final Color inContainerColor;

  const CalendarWidget(
      {super.key,
      required this.dayNumColor,
      required this.dayStrColor,
      required this.containerColor,
      required this.inDayNumColor,
      required this.inDayStrColor,
      required this.inContainerColor});

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      headerProps: const EasyHeaderProps(
          showMonthPicker: false,
          monthPickerType: MonthPickerType.dropDown,
          dateFormatter: DateFormatter.fullDateMonthAsStrDY(),
          selectedDateStyle: TextStyle(
              color: AppColor.white,
              fontSize: 30,
              fontWeight: FontWeight.bold)),
      dayProps: EasyDayProps(
        height: 90,
        dayStructure: DayStructure.dayStrDayNum,
        activeDayStyle: DayStyle(
          dayNumStyle: TextStyle(
              color: dayNumColor, fontWeight: FontWeight.bold, fontSize: 25),
          dayStrStyle: TextStyle(color: dayStrColor),
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
        ),
        inactiveDayStyle:  DayStyle(
          dayNumStyle: TextStyle(
              color: inDayNumColor, fontWeight: FontWeight.bold, fontSize: 25),
          dayStrStyle: TextStyle(color: inDayStrColor),
          decoration: BoxDecoration(
            color: inContainerColor,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}
