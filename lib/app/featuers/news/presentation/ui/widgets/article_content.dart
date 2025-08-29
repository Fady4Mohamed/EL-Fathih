import 'package:el_fathih/app/featuers/news/presentation/ui/widgets/animated_card.dart';
import 'package:el_fathih/app/featuers/news/presentation/ui/widgets/artical_image.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleContent extends StatelessWidget {
  const ArticleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
      child: ListView(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          AnimatedCard(
            delay: 600,
            child: Text(
              'المغامرات الجبلية تقدم مزيجًا مثاليًا من الإثارة، والجمال الطبيعي، والهدوء. سواء كنت من محبي التسلق، أو المشي لمسافات طويلة، أو ببساطة الاستمتاع بالمناظر الخلابة، فإن الجبال توفر تجربة لا تُنسى. في هذا المقال، نستعرض ست طرق للاستمتاع بمغامرات الجبال هذا الصيف.',
              style: TextStyles.font18GrayRegular.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 25),
          AnimatedCard(
            delay: 1000,
            child: Text(
              '1. التخطيط المسبق: قبل الانطلاق في أي مغامرة جبلية، من الضروري التخطيط المسبق. تحقق من الطقس، واختر المسارات المناسبة لمستوى لياقتك البدنية، واحرص على إبلاغ شخص ما بخططك.',
              style: TextStyles.font16NevySemiBold,
            ),
          ),
          SizedBox(height: 25),

          AnimatedCard(
            delay: 1400,
            child: Text(
              '2. المعدات المناسبة: ارتدِ ملابس وأحذية مناسبة للمشي في الجبال. تأكد من حمل معدات السلامة الأساسية مثل خريطة، وبوصلة، ومجموعة إسعافات أولية، وماء كافٍ للطريق.',
              style: TextStyles.font16NevySemiBold,
            ),
          ),

          SizedBox(height: 25),

          // Second Content Image
          AnimatedCard(
            delay: 1600,
            child: ArticalImage(),
          ),

          SizedBox(height: 25),

          AnimatedCard(
            delay: 1800,
            child: Text(
              '3. استكشاف المسارات: الجبال مليئة بالمسارات المتنوعة التي تناسب جميع المستويات. اختر مسارًا جديدًا لاستكشافه كل مرة، واستمتع بالتنوع الطبيعي الذي تقدمه الجبال.',
              style: TextStyles.font16NevySemiBold,
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}