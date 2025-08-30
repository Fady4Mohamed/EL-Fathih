import 'package:el_fathih/app/core/helper/consts.dart';
import 'package:el_fathih/app/core/helper/setup_service_locator.dart';
import 'package:el_fathih/app/featuers/news/data/models/blog.dart';
import 'package:el_fathih/app/featuers/news/data/models/blog_content.dart';
import 'package:el_fathih/app/featuers/news/data/models/blog_data.dart';
import 'package:el_fathih/el_fathih.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async {
  setupServiceLocator();
  // hive
  await Hive.initFlutter();
  Hive.registerAdapter(BlogContentAdapter());
  Hive.registerAdapter(BlogDataAdapter());
  Hive.registerAdapter(BlogAdapter());

  await Hive.openBox<BlogData>(Consts.blogsBox);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 813), child: const ElFathih());
  }
}
