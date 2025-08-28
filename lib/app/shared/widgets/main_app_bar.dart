

import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     padding:  EdgeInsets.symmetric(vertical: 10.h),
      color: ColorsManager.mainlight,
      child: Center(child: Text(title,style: TextStyles.font20whiteSemiBold,)));
  }
}