import 'package:dio/dio.dart';

class ApiSevices {
  final Dio dio;

  ApiSevices(this.dio);
  final String baseUrl = "https://www.googleapis.com/books/v1/volumes?";


//Function to get data
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
  
}
