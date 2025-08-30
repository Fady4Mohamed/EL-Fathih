
import 'package:el_fathih/app/featuers/news/data/models/blog.dart';
import 'package:hive/hive.dart';

part 'blog_data.g.dart';

@HiveType(typeId: 2)
class BlogData {
  @HiveField(0)
  final List<Blog> blogs;

  BlogData({required this.blogs});

  factory BlogData.fromJson(Map<String, dynamic> json) {
    return BlogData(
      blogs: List<Blog>.from(json['blogs'].map((x) => Blog.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "blogs": blogs.map((x) => x.toJson()).toList(),
    };
  }
}
