import 'package:hive/hive.dart';
part 'blog_content.g.dart';

@HiveType(typeId: 1)
class BlogContent {
  @HiveField(0)
  final String? subtitle;
  @HiveField(1)
  final String? body;
  @HiveField(2)
  final String? image;

  BlogContent({
     this.subtitle,
     this.body,
     this.image,
  });

  factory BlogContent.fromJson(Map<String, dynamic> json) {
    return BlogContent(
      subtitle: json['subtitle'],
      body: json['body'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "subtitle": subtitle,
      "body": body,
      "image": image,
    };
  }
}