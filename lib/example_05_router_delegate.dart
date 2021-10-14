import 'package:flutter/material.dart';
import 'package:flutter_navigator_v2/pages/home.dart';
import 'package:flutter_navigator_v2/router/route_parser.dart';
import 'package:flutter_navigator_v2/router/router_delegate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final delegate = MyRouteDelegate(
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute(
        settings: settings,
        builder: (BuildContext context) {
          return const HomePage();
        },
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    // Navigator 2.0 之后，Flutter 也提供了 MaterialApp 的新构造函数 router 来帮助我们直接在应用顶层构造出全局的 Router 组件
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routeInformationParser: MyRouteParser(), // 路由信息解析
      routerDelegate: delegate, // 路由代理
    );
  }
}
