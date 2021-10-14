import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyRouteParser extends RouteInformationParser<String> {
  // 接受系统传递给我们的路由信息 routeInformation，然后，返回转发给我们之前定义的路由代理 RouterDelegate，
  // 解析后的类型为 RouteInformationParser 的泛型类型，即这里的 String
  @override
  Future<String> parseRouteInformation(RouteInformation routeInformation) {
    var location = routeInformation.location;
    return SynchronousFuture(location!);
  }

  // 返回一个 RouteInformation 对象，表示从传入的 configuration 恢复路由信息。
  @override
  RouteInformation restoreRouteInformation(String configuration) {
    return RouteInformation(location: configuration);
  }
}
