import 'package:flutter/material.dart';
import 'package:flutter_navigator_v2/router/router_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Material(
        color: Colors.brown,
        child: Center(
          child: MaterialButton(
            onPressed: () {
              MyRouteDelegate.of(context).toName("/list");
            },
            child: const Text('Home'),
          ),
        ),
      ),
    );
  }
}
