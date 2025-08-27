
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartContainer extends StatelessWidget {
  const PartContainer({
    super.key, required this.partName, required this.imagePath,
  });
final String partName;
final String imagePath ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Container(
        width: 200.w,
        height: 80.h,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: Colors.white,
          boxShadow:[
            BoxShadow(
              color: Colors.black45,
              blurRadius: 10,
              offset: Offset(0, 0)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(partName, style: TextStyles.font20BlackSemiBold,),
                Text('ابداء الجلسات', style: TextStyles.font14GrayRegular,),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Image.asset(imagePath, width: 60.w, height: 60.h,),
            ),
          ],
        ),
      ),
    );
  }
}
