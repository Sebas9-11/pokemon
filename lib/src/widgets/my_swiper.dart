import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class MySwiper extends StatefulWidget {
  const MySwiper({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MySwiperState();
}

class _MySwiperState extends State<MySwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return const Image(
            image: NetworkImage('https://picsum.photos/250?image=9'),
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );
  }
}
