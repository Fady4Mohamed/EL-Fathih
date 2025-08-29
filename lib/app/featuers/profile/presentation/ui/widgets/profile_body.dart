
import 'package:el_fathih/app/featuers/profile/presentation/ui/widgets/button_row.dart';
import 'package:el_fathih/app/featuers/profile/presentation/ui/widgets/red_button_row.dart';
import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w, bottom: 10.h),
      child: Column(
        children: [
          ButtonRow(title: 'لون بشرتي', onPressed: () {}),
          SizedBox(height: 10.h),
          ButtonRow(title: 'لون شعر جسمي', onPressed: () {}),
          SizedBox(height: 10.h),
          ButtonRow(title: 'تذكيرات', onPressed: () {}),
          SizedBox(height: 5.h),
          Divider(
            color: ColorsManager.whiteGrey,
            thickness: 1.h,
          ),
          ButtonRow(title: 'تغيير كلمة المرور', onPressed: () {}),
          SizedBox(height: 10.h),
          ButtonRow(title: 'جهازي', onPressed: () {}),
          SizedBox(height: 10.h),
          ButtonRow(title: 'حول', onPressed: () {}),
          SizedBox(height: 5.h),
          Divider(
            color: ColorsManager.whiteGrey,
            thickness: 1.h,
          ),
          RedButtonRow(title: 'تسجيل الخروج', onPressed: () {},
          assetPath: 'assets/svg/Sign_out_squre.svg',
          ),
          SizedBox(height: 10.h),
          RedButtonRow(title: 'حذف الحساب', onPressed: () {},
          assetPath: 'assets/svg/delet.svg',
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
