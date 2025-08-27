
import 'package:el_fathih/app/featuers/home/presentation/ui/widgets/hello_text.dart';
import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorsManager.mainlight, ColorsManager.main,],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child:  HelloText(),
    );
  }
}
