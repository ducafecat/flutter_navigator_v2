import 'package:flutter/material.dart';
import 'package:flutter_navigator_v2/pages/home.dart';
import 'package:flutter_navigator_v2/pages/list.dart';
import 'package:flutter_navigator_v2/router/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  final pages = [
    MyPage(
      key: const ValueKey('/'),
      name: '/home',
      builder: (context) => const HomePage(),
    ),
    MyPage(
      key: const ValueKey('/list'),
      name: '/list',
      builder: (context) => const ListPage(),
    )
  ];

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    setState(() => pages.remove(route.settings));
    return route.didPop(result);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Navigator(
          key: _navigatorKey,
          onPopPage: _onPopPage,
          pages: List.of(pages),
        ),
      ),
    );
  }
}
