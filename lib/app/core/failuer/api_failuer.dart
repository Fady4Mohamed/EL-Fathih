import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:el_fathih/app/core/failuer/failure.dart';

class ServerFailure extends Failure {
  ServerFailure({required super.message, super.statusCode});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'bad Certificate ,please try again');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(message: 'Connection Error , Please try later');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(message: 'No Internet Connection');
        }
        return ServerFailure(message: 'Unexpected Error, Please try again!');
      default:
        return ServerFailure(
            message: 'Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    print(statusCode);
    log('statusCode: $statusCode');
    if (statusCode == 400 || statusCode == 403 || statusCode == 401) {
      return ServerFailure(
          message:
             response['message'],
          statusCode: statusCode);

    } else if (statusCode == 404) {
      return ServerFailure(
          message:
             response['message'],
          statusCode: statusCode);
    } else if (statusCode == 500) {
      return ServerFailure(
          message: 'ther was an server error , Please try later!',
          statusCode: statusCode);
    } else {
      return ServerFailure(
          message: 'There was an Error, Please try again ',
          statusCode: statusCode);
    }
  }
}