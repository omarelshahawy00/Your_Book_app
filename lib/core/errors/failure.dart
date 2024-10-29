import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailer extends Failure {
  ServerFailer(super.errMessage);

  factory ServerFailer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailer('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailer('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailer('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailer('Bad sertificate');
      case DioExceptionType.badResponse:
        ServerFailer.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailer('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailer(
            'There is an error while trying to make connection');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketExeption')) {
          return ServerFailer('No internet connection');
        }
        return ServerFailer('Unexpected Error, please try again!');
      default:
        return ServerFailer('Oops there was an error try again later');
    }
    return ServerFailer('errMessage');
  }
  factory ServerFailer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 404) {
      return ServerFailer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailer('Your request not found please try again later');
    } else if (statusCode == 500) {
      return ServerFailer('Internal server error please try later');
    } else {
      return ServerFailer('Oops there was an error try again later');
    }
  }
}
