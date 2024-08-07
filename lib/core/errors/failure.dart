import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessag;

  Failure(this.errMessag);
}

class ServerError extends Failure {
  ServerError(super.errMessag);

factory  ServerError.fromDioExeption(DioException dioExeption) {
    
    switch (dioExeption.type) {
      //الايرور بيرجع على هيئة Enum //=> تتعامل معاها بسهولة باستخدم سويتش

      case DioExceptionType.connectionTimeout:
        return ServerError("connection Timeout with Api Sever");

      case DioExceptionType.sendTimeout:
      return ServerError("send Timeout with Api Server");
      case DioExceptionType.receiveTimeout:
      return ServerError("receive Timeout with Api Server");
      case DioExceptionType.badCertificate:
      return ServerError("Connection Error: Untrusted server certificate. Please try again later.");
      case DioExceptionType.badResponse:
      return ServerError.fromResponse(dioExeption.response!.statusCode!,dioExeption.response!.data);
      case DioExceptionType.cancel:
      return ServerError("Oops The Request was canceld,try again");
      case DioExceptionType.connectionError:
      //هنا لو مكنش مفيش اتصال بالنت ==> error of type SocketExeption
       return ServerError("conect to the internet and try again");

      case DioExceptionType.unknown:
        return ServerError("Ooops UnExepected Error");
        default:
        return ServerError("Ooops UnExepected Error");

//كدا انت بتنهدل كل حاجة
      //هنا لو الايرور مش معروف

          
    }
  }
  factory ServerError.fromResponse( int statusCode , dynamic response){
    if(statusCode== 400 || statusCode== 400  ){
      return ServerError(response["error"]["message"]);
    }else if(statusCode == 500 ){
      return ServerError("There Was an Error In the Server,please try again");
    }else if(statusCode == 404 ){
      return ServerError("Method not Found,Try again");
    }
    else{
       return ServerError("Ooops UnExepected Error");
    }
  }
}
