

import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartContainer extends StatelessWidget {
  const PartContainer({
    super.key, required this.image, required this.title,  this.isDone=false,
  });
final String image;
final String title;
final bool isDone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100.r,
          width: 100.r,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundColor: ColorsManager.main,
                child: CircleAvatar(
                  backgroundColor: ColorsManager.whiteGrey,
                  radius: 47.r,
                  backgroundImage:
                      AssetImage(image),
                ),
              ),
              Positioned(
                right: 3.r,
                bottom: 2,
                child:isDone? Image.asset('assets/image/checked.png',
                    height: 20.r, width: 20.r):Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: ColorsManager.main,width: 2.w),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text('2',style: TextStyles.font14NevySemiBold,))
                    ),)
            ],
          ),
        ),
        SizedBox(height: 5.h,),
        Text(title,style: TextStyles.font20NevySemiBold,),
      ],
    );
  }
}
