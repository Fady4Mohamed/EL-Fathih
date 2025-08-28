
import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/day_container.dart';
import 'package:flutter/material.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return DayContainer();
        },
      ),
    );
  }
}
