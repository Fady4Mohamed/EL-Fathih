import 'package:el_fathih/app/featuers/news/data/models/blog_content.dart';
import 'package:hive/hive.dart';

part 'blog.g.dart';

@HiveType(typeId: 0)
class Blog {
  final String? id;
  final String? admin;
  @HiveField(0)
  final String? title;
  @HiveField(1)
  final String? introduction;
  @HiveField(2)
  final List<BlogContent>? content;
  final String? slug;
  final String? category;
  @HiveField(3)
  final String? imageUrl;

  Blog({
     this.id,
     this.admin,
     this.title,
     this.introduction,
     this.content,
     this.slug,
     this.category,
     this.imageUrl,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['_id'],
      admin: json['admin'],
      title: json['title'],
      introduction: json['introduction'],
      content: List<BlogContent>.from(
          json['content'].map((x) => BlogContent.fromJson(x))),
      slug: json['slug'],
      category: json['category'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "admin": admin,
      "title": title,
      "introduction": introduction,
      "content": content?.map((x) => x.toJson()).toList(),
      "slug": slug,
      "category": category,
      "imageUrl": imageUrl,
    };
  }
}
