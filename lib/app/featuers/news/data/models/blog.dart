import 'package:el_fathih/app/featuers/news/data/models/blog_content.dart';

class Blog {
  final String id;
  final String admin;
  final String title;
  final String introduction;
  final List<BlogContent> content;
  final String slug;
  final String category;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  Blog({
    required this.id,
    required this.admin,
    required this.title,
    required this.introduction,
    required this.content,
    required this.slug,
    required this.category,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
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
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "admin": admin,
      "title": title,
      "introduction": introduction,
      "content": content.map((x) => x.toJson()).toList(),
      "slug": slug,
      "category": category,
      "imageUrl": imageUrl,
      "createdAt": createdAt.toIso8601String(),
      "updatedAt": updatedAt.toIso8601String(),
    };
  }
}
