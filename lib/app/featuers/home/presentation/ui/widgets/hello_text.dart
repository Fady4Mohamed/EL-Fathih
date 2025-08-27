import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('مرحبا فادي', style: TextStyles.font16grayRegular),
          SizedBox(height: 5.h),
          Text(
            'يسرّنا رؤيتك من جديد تعرفي على التطبيق وعالجي منطقة جسمك الاولى . و سوف نخطط لك الامور الباقيه',
            style: TextStyles.font20whiteSemiBold,
            textAlign: TextAlign.right,
          ),
          SizedBox(height: 15.h),
          Text('جلسات العلاج الجديدة', style: TextStyles.font16grayRegular),
        ],
      ),
    );
  }
}
