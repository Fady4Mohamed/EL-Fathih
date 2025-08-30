
class BlogContent {
  final String? subtitle;
  final String? body;
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