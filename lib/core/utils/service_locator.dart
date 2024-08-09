import 'package:bookly/core/utils/api_sevices.dart';
import 'package:bookly/feautures/home/data/repository/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
//1- regetser for object=> اللي عايز تعمل منه نسخة واحدة وتعيد استخدامها
  getIt.registerSingleton<ApiSevices>(ApiSevices(Dio()));
  getIt.registerSingleton<HomeImplementation>(
      HomeImplementation(getIt.get<ApiSevices>()));
}
