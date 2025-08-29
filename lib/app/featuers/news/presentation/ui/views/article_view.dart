import 'package:el_fathih/app/featuers/news/presentation/ui/widgets/article_content.dart';
import 'package:el_fathih/app/shared/theming/color.dart';
import 'package:el_fathih/app/shared/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({super.key});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    _slideController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(begin: Offset(0, 0.3), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic),
        );

    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });

    // Start animations
    _fadeController.forward();
    Future.delayed(Duration(milliseconds: 300), () {
      _slideController.forward();
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: 300.h,
              floating: false,
              pinned: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Hero Image with Parallax Effect
                    Transform.translate(
                      offset: Offset(0, _scrollOffset * 0.5),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    // Gradient Overlay
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ColorsManager.white.withValues(alpha: 0.4),
                            ColorsManager.main.withValues(alpha: 0.6),
                          ],
                        ),
                      ),
                    ),
                    // Title Overlay
                    Positioned(
                      bottom: 30.h,
                      right: 20.w,
                      child: FadeTransition(
                        opacity: _fadeAnimation,
                        child: SizedBox(
                          width: 200.w,
                          child: Text(
                            '٦ طرق للاستمتاع بمغامرات الجبال هذا الصيف',
                            style: TextStyles.font20whiteSemiBold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              leading: IconButton(
                icon:const Icon(Icons.arrow_back, color: ColorsManager.main),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            SliverToBoxAdapter(
              child: SlideTransition(
                position: _slideAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Container(
                    color: ColorsManager.white,
                    child: ArticleContent(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}