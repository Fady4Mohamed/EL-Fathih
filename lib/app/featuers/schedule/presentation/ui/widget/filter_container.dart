
import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    super.key, required this.title,  this.isSelected=false, this.onTap,
  });
final String title;
final bool isSelected;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90.w,
        height: 40.h,
        decoration: BoxDecoration(
          color:isSelected? ColorsManager.mainlight:ColorsManager.whiteGrey,
          borderRadius: BorderRadius.circular(20.r),  ),
        child: Center(child: Text(title, style: TextStyles.font17whiteSemiBold.copyWith(
          color:isSelected? ColorsManager.whiteGrey:ColorsManager.main,
        ),)),
      ),
    );
  }
}