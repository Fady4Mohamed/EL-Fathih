import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/filter_list.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
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
          Spacer(
            flex: 2,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 40.w,bottom: 10.h),
            child: Image.asset('assets/image/empty.png',height: 200.h,width: 200.w,),
          ),
          Center(
            child: SizedBox(
              width: 300.w,
              child: Text(
                'الجدول فارغ هل ستبدأين اليوم جلسات العلاج معنا لاول مرة؟',
                style: TextStyles.font20NevySemiBold,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
