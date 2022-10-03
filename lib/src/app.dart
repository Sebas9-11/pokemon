import 'package:flutter/material.dart';
import 'package:pokemon/src/screens/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Center(
        child: Home(),
      ),
    );
  }
}
