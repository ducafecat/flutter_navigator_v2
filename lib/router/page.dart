import 'package:flutter/material.dart';

class MyPage<T> extends Page<T> {
  const MyPage({
    required LocalKey key,
    required String name,
    required this.builder,
  }) : super(key: key, name: name);

  final WidgetBuilder builder;

  @override
  Route<T> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: builder,
    );
  }

  @override
  String toString() => '$name';
}
