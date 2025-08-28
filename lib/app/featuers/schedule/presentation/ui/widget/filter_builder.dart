import 'package:el_fathih/app/featuers/schedule/presentation/manager/parts_filter_cubit/parts_filter_cubit.dart';
import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/all_empty.dart';
import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/part_empty.dart';
import 'package:el_fathih/app/featuers/schedule/presentation/ui/widget/schedule_list.dart';
import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterBuilder extends StatelessWidget {
  const FilterBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PartsFilterCubit, PartsFilterState>(
      builder: (context, state) {
        if (state is PartsFilterArms) {
          return PartEmpty(
            image: 'assets/image/brachioplasty (1).png',
            title:
                'جدول الذراعين فارغ هل ستبدأين اليوم جلسات العلاج معنا لاول مرة؟',
            onPressed: () {},
          );
        } else if (state is PartsFilterLegs) {
          return PartEmpty(
            image: 'assets/image/legs (1).png',
            title:
                'جدول الساقين فارغ هل ستبدأين اليوم جلسات العلاج معنا لاول مرة؟',
            onPressed: () {},
          );
        } else if (state is PartsFilterUnderArms) {
          return PartEmpty(
            image: 'assets/image/arm (1).png',
            title:
                'جدول تحت الابطين فارغ هل ستبدأين اليوم جلسات العلاج معنا لاول مرة؟',
            onPressed: () {},
          );
        } else if (state is PartsFilterBikiniLine) {
          return ScheduleList();
          // PartEmpty(
          //   image: 'assets/image/woman.png',
          //   title:
          //       'جدول خط البكيني فارغ هل ستبدأين اليوم جلسات العلاج معنا لاول مرة؟',
          //   onPressed: () {},
          // );
        } else if (state is PartsFilterStomach) {
          return PartEmpty(
            image: 'assets/image/belly (1).png',
            title:
                'جدول البطن فارغ هل ستبدأين اليوم جلسات العلاج معنا لاول مرة؟',
            onPressed: () {},
          );
        } else if (state is PartsFilterFace) {
          return PartEmpty(
            image: 'assets/image/face.png',
            title:
                'جدول الوجه فارغ هل ستبدأين اليوم جلسات العلاج معنا لاول مرة؟',
            onPressed: () {},
          );
        } else if (state is PartsFilterAll) {
          return AllEmpty();
        }
        return Expanded(
          child: Center(
            child: CircularProgressIndicator(color: ColorsManager.main),
          ),
        );
      },
    );
  }
}
