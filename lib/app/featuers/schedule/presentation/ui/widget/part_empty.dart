import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartEmpty extends StatelessWidget {
  const PartEmpty({super.key, required this.image, required this.title, this.onPressed});
final String image;
final String title;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          Padding(
            padding:  EdgeInsets.only( bottom: 4.h),
            child: Image.asset(
              image,
              height: 200,
              width: 200,
            ),
          ),
          Center(
            child: SizedBox(
              width: 300,
              child: Text(
                title,
                style: TextStyles.font20NevySemiBold,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 15.h,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.main,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            ),
            onPressed: onPressed, child: 
          Text('ابداي جلستك الاولى',style: TextStyles.font15whiteRegular,),),
          Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}