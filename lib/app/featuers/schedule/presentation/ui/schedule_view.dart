import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/filter_builder.dart';
import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/filter_list.dart';
import 'package:el_fathih/app/shared/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MainAppBar(title: 'الجدول'),
          SizedBox(height: 10.h),
          FilterList(),
          SizedBox(height: 10.h),
          FilterBuilder(),
        ],
      ),
    );
  }
}
