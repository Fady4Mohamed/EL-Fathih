import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NavigatioBarView extends StatefulWidget {
  const NavigatioBarView({super.key, this.choice = 0});
  final int choice;
  @override
  State<NavigatioBarView> createState() => _NavigatioBarViewState();
}

class _NavigatioBarViewState extends State<NavigatioBarView> {
  late int choice;
  @override
  void initState() {
    choice = widget.choice;
    super.initState();
  }

  final List<Widget> pages = [
    // Home
    const SizedBox(),
    // Schedule
    const SizedBox(),
    // News
    const SizedBox(),
    // Profile
    const SizedBox()
  ];
  final List<String> text = [
    // Home
    'Home',
    // schedule
    'Schedule',
    // News
    'News',
    // Profile
    'Profile',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 813.h,
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              pages[choice],
              Container(
                height: 80.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: ColorsManager.mainlight,
                    border: Border(top: BorderSide(width: 2, color:ColorsManager.main))),
                child: Row(
                  children: [
                    _buildNavIcon('assets/svg/home.svg', 0, choice==0),
                    _buildNavIcon('assets/svg/schedule.svg', 1, choice==1),
                    _buildNavIcon('assets/svg/news.svg', 2, choice==2),
                    _buildNavIcon('assets/svg/profile.svg', 3, choice==3),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  Widget _buildNavIcon(String icon, int index,bool isActive) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () {
          setState(() {
            choice = index;
          });
        },
        child: SvgPicture.asset(icon, height: 23.h, colorFilter: ColorFilter.mode(isActive?ColorsManager.main:Colors.white, BlendMode.srcIn)),
      ),
    );
  }
}