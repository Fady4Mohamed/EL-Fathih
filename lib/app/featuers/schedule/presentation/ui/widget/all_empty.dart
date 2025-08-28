
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllEmpty extends StatelessWidget {
  const AllEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
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
