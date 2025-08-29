import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, this.onPressed, required this.title});
final void Function()? onPressed;
final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(double.infinity, 40.h),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      child: Row(
        children: [
          SizedBox(width: 4.w),
          Text(title, style: TextStyles.font14NevySemiBold),
          Spacer(),
          SvgPicture.asset(
            'assets/svg/Vector (1).svg',
            width: 16.w,
            height: 16.h,
          ),
          SizedBox(width: 4.w),
        ],
      ),
    );
  }
}
