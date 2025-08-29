import 'package:el_fathih/app/featuers/home/presentation/ui/widgets/background_container.dart';
import 'package:el_fathih/app/featuers/home/presentation/ui/widgets/parts_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Stack(children: [BackgroundContainer(), PartsList()]),
        ],
      ),
    );
  }
}
