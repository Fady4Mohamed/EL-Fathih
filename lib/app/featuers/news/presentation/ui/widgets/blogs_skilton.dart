import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BlogsSkilton extends StatelessWidget {
  const BlogsSkilton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
                          direction: ShimmerDirection.rtl,
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade200,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16.w),
                                height: 300.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16.w),
                                height: 300.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                            ],
                          ),
                        );
  }
}