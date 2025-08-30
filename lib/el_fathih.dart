import 'package:el_fathih/app/core/routing/app_router.dart';
import 'package:el_fathih/app/shared/navigatio_bar_view.dart';
import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElFathih extends StatelessWidget {
  const ElFathih({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          ),
        ),
        scaffoldBackgroundColor: ColorsManager.white,
        colorScheme:ColorScheme.fromSeed(seedColor: ColorsManager.mainlight),
      ),
      home: const NavigatioBarView( choice: 0,),
        onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
