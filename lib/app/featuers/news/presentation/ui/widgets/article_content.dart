import 'package:el_fathih/app/featuers/news/data/models/blog.dart';
import 'package:el_fathih/app/featuers/news/presentation/ui/widgets/animated_card.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleContent extends StatelessWidget {
  const ArticleContent({super.key, required this.blog});
  final Blog blog;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
      child: ListView.builder(
        itemCount: blog.content.length,
        itemBuilder: (context, index) {
          final content = blog.content[index];
          if (content.body != null) {
            return Padding(
              padding: EdgeInsets.only(bottom: 25.h),
              child: AnimatedCard(
                delay: 600 + (index * 200),
                child: Text(
                  content.body!,
                  style: TextStyles.font16NevySemiBold,
                ),
              ),
            );
          } else if (content.image != null) {
            return Padding(
              padding: EdgeInsets.only(bottom: 25.h),
              child: AnimatedCard(
                delay: 600 + (index * 200),
                child: Image.network(content.image!, fit: BoxFit.cover),
              ),
            );
          } else if (content.subtitle != null) {
            return Padding(
              padding: EdgeInsets.only(bottom: 25.h),
              child: AnimatedCard(
                delay: 600 + (index * 200),
                child: Text(
                  content.subtitle!,
                  style: TextStyles.font18GrayRegular.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
      ),
    );
  }
}
