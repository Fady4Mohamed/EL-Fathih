import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/part_container.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayContainer extends StatelessWidget {
  const DayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text('الجمعة 12 مايو', style: TextStyles.font20NevySemiBold),
        ),
        SizedBox(height: 20.h),
        Container(
          width: 300.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: GridView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                childAspectRatio: 0.8,
              ),
              padding: EdgeInsets.all(10.r),
              itemBuilder: (context, index) {
                return PartContainer(
                  image: 'assets/image/belly (1).png',
                  title: 'الارجل',
                );
              },
            ),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
