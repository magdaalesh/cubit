import 'package:dio/dio.dart';

class errorhandler {
  String dioerror(DioException error) {
    if (error.response != null) {
      final staruscode = error.response!.statusCode;
      final data = error.response!.data;
      switch (staruscode) {
        case 400:
          return data['message'] ?? '(400)';
        case 401:
          return 'unauthenticated request ';
        case 404:
          return 'unavaible element';
        case 500:
          return 'server error';
        default:
          return data['massege'] + ' with statuscode  $staruscode';
      }
    }

    return 'cant connect the server';
  }
}
