import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RedButtonRow extends StatelessWidget {
  const RedButtonRow({super.key, this.onPressed, required this.title, required this.assetPath});
final void Function()? onPressed;
final String title;
final String assetPath;
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
          Text(title, style: TextStyles.font14NevySemiBold.copyWith(color: ColorsManager.peach)),
          Spacer(),
          SvgPicture.asset(
            assetPath,
            width: 24.w,
            height: 24.h,
          ),
          SizedBox(width: 4.w),
        ],
      ),
    );
  }
}
