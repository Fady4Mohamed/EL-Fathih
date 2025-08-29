import 'package:el_fathih/app/featuers/profile/presentation/ui/widgets/profile_body.dart';
import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:el_fathih/app/shared/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainAppBar(title: 'الملف الشخصي', color: ColorsManager.white),
                SizedBox(height: 12.h),
                Center(
                  child: Container(
                    width: 100.r,
                    height: 100.r,
                    padding: EdgeInsets.all(4.r),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsManager.mainlight.withValues(alpha: .3),
                      border: Border.all(
                        color: ColorsManager.mainlight,
                        width: 2.w,
                      ),
                    ),
                    child: Image.asset('assets/image/girl.png'),
                  ),
                ),
                SizedBox(height: 15.h),
                Center(
                  child: Text('mariam', style: TextStyles.font20NevySemiBold),
                ),
                ProfileBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
