import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:el_fathih/app/core/failuer/api_failuer.dart';
import 'package:el_fathih/app/core/failuer/failure.dart';
import 'package:el_fathih/app/core/helper/setup_service_locator.dart';
import 'package:el_fathih/app/core/services/%20api_services.dart';
import 'package:el_fathih/app/featuers/news/data/models/blogs_response.dart';

class GetBlogsRepoImplemintation {
  final ApiServices _apiServices = getIt<ApiServices>();
  Future<Either<Failure, BlogsResponse>> get() async {
    try {
      var response = await _apiServices.get(endPoint: 'api/v1/blogs');
      return right(BlogsResponse.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
