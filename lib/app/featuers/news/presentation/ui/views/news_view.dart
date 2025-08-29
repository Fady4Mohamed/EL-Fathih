import 'package:el_fathih/app/featuers/news/presentation/ui/widgets/article_container.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:el_fathih/app/shared/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainAppBar(title: 'الأخبار'),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 18.w, bottom: 10.h),
                    child: Text(
                      'مقالات ونصائح طبية',
                      style: TextStyles.font18GrayRegular,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context,index) {
                      return ArticleContainer();
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

