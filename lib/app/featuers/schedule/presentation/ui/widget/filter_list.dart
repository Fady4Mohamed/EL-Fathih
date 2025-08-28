
import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/filter_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterList extends StatefulWidget {
  const FilterList({
    super.key,
  });

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 40.h,
    child: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          SizedBox(width: 20.w),
          FilterContainer(
            title: 'الكل',
            isSelected: selectedIndex == 0,
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
          ),
          SizedBox(width: 10.w),
          FilterContainer(title: 'الذراعين',
          isSelected: selectedIndex == 1,
          onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
          ),
          SizedBox(width: 10.w),
          FilterContainer(title: 'خط البكيني',
          isSelected: selectedIndex == 2,
          onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
          ),
          SizedBox(width: 10.w),
          FilterContainer(title: 'منطقة الوجه',
          isSelected: selectedIndex == 3,
          onTap: () {
              setState(() {
                selectedIndex = 3;
              });
            }),
          SizedBox(width: 10.w),
          FilterContainer(title: 'البطن',
          isSelected: selectedIndex == 4,
          onTap: () {
              setState(() {
                selectedIndex = 4;
              });
            }),
          SizedBox(width: 10.w),
          FilterContainer(title: 'منطقة الابط',
          isSelected: selectedIndex == 5,
          onTap: () {
              setState(() {
                selectedIndex = 5;
              });
            }),
          SizedBox(width: 10.w),
          FilterContainer(title: 'الأرجل',
          isSelected: selectedIndex == 6,
          onTap: () {
              setState(() {
                selectedIndex = 6;
              });
            }),
          SizedBox(width: 20.w),
          
          ]
    ),
    );
  }
}
