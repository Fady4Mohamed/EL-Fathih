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
        //  scaffoldBackgroundColor: ColorsManager.mainGray,
        // colorScheme:ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        brightness: Brightness.dark,
      ),
      home: const Scaffold(),
    );
  }
}
