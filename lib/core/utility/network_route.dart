import 'package:cubit_movie/core/exception/network_route_exception.dart';

enum NetworkRoute {
  baseUrl,
}

extension NetworkRouteExtension on NetworkRoute {
  String get rawValue {
    switch (this) {
      case NetworkRoute.baseUrl:
        return 'http://www.omdbapi.com/';
      default:
        throw NetworkRouteException();
    }
  }
}
