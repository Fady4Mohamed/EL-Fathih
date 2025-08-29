import 'package:el_fathih/app/core/routing/exstintion.dart';
import 'package:el_fathih/app/core/routing/routes.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleContainer extends StatelessWidget {
  const ArticleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom:  20.h),
      child: Center(
        child: GestureDetector(
          onTap: () {
            context.pushNamed(Routes.articleView);
          },
          child: Container(
            height: 300.h,
            width: 345.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10.r),
                  ),
                  child: Image.asset(
                    'assets/image/stomach.png',
                    height: 180.h,
                    width: 345.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Text(
                    'كيف تتخلصين من آلام الظهر أثناء الحمل؟',
                    style: TextStyles.font20NevySemiBold,
                  ),
                ),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: SizedBox(
                    width: 325.w,
                    child: Text(
                      'تعرفي على أسباب آلام الظهر أثناء الحمل وكيفية التعامل معها بطرق طبيعية. بالإضافة إلى تمارين تساعد في تقوية عضلات الظهر وتحسين الوضعية. و نصائح غذائية لتقليل الالتهابات. يينوصي بزيارة الطبيب إذا استمرت الآلام أو تفاقمت.',
                      style: TextStyles.font14NevySemiBold,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
