
import 'package:el_fathih/app/featuers/news/data/models/blog.dart';

class BlogData {
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
