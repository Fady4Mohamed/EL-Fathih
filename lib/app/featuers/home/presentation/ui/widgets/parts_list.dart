import 'package:el_fathih/app/featuers/home/presentation/ui/widgets/part_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartsList extends StatelessWidget {
  const PartsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 185.h),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          PartContainer(partName: 'اليد', imagePath: 'assets/image/arm.png'),
          SizedBox(height: 18.h),
          PartContainer(
            partName: 'البكيني',
            imagePath: 'assets/image/bikini.png',
          ),
          SizedBox(height: 18.h),
          PartContainer(partName: "الوجه", imagePath: 'assets/image/face.png'),
          SizedBox(height: 18.h),
          PartContainer(
            partName: 'البطن',
            imagePath: 'assets/image/stomach.png',
          ),
          SizedBox(height: 18.h),
          PartContainer(
            partName: 'اسفل اليد',
            imagePath: 'assets/image/under arm.png',
          ),
          SizedBox(height: 18.h),
          PartContainer(partName: 'القدم', imagePath: 'assets/image/leg.png'),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
