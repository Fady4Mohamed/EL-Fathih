import 'package:el_fathih/app/featuers/news/data/models/blog_data.dart';

class BlogsResponse {
  final String status;
  final int code;
  final int results;
  final String message;
  final BlogData data;

  BlogsResponse({
    required this.status,
    required this.code,
    required this.results,
    required this.message,
    required this.data,
  });

  factory BlogsResponse.fromJson(Map<String, dynamic> json) {
    return BlogsResponse(
      status: json['status'],
      code: json['code'],
      results: json['results'],
      message: json['message'],
      data: BlogData.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "status": status,
      "code": code,
      "results": results,
      "message": message,
      "data": data.toJson(),
    };
  }
}