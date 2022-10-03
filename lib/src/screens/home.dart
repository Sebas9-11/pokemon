import 'package:flutter/material.dart';
import 'package:pokemon/src/widgets/my_page.dart';
import 'package:pokemon/src/widgets/my_swiper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
      ),
      body: Column(
        children: const [
          Expanded(flex: 1, child: MyPage()),
          Expanded(flex: 2, child: MySwiper()),
        ],
      ),
    );
  }
}
