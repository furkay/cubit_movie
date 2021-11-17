import '../utility/network_route.dart';
import 'package:dio/dio.dart';

class ApiConstants {
  static ApiConstants? _instance;
  static ApiConstants get instance {
    _instance ??= ApiConstants._init();
    return _instance!;
  }

  Dio dio = Dio(BaseOptions(baseUrl: NetworkRoute.baseUrl.rawValue));

  ApiConstants._init();
}
