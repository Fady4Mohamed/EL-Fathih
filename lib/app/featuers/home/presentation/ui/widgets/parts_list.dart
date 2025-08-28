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
          PartContainer(partName: 'الذراعين', imagePath: 'assets/image/brachioplasty (1).png'),
          SizedBox(height: 18.h),
          PartContainer(
            partName: 'خط البكيني',
            imagePath: 'assets/image/woman.png',
          ),
          SizedBox(height: 18.h),
          PartContainer(partName: "منطقة الوجه", imagePath: 'assets/image/face.png'),
          SizedBox(height: 18.h),
          PartContainer(
            partName: 'البطن',
            imagePath: 'assets/image/belly (1).png',
          ),
          SizedBox(height: 18.h),
          PartContainer(
            partName: 'منطقة الابط',
            imagePath: 'assets/image/arm (1).png',
          ),
          SizedBox(height: 18.h),
          PartContainer(partName: 'الأرجل', imagePath: 'assets/image/legs (1).png'),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
