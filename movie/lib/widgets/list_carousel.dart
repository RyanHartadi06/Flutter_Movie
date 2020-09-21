import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ListCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Carousel(
        images: [
          Image.asset(
            'images/slider/1.jpg',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'images/slider/2.jpg',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'images/slider/3.jpg',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'images/slider/4.jpg',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'images/slider/5.jpg',
            fit: BoxFit.fill,
          ),
        ],
        dotSize: 4.0,
        dotColor: Colors.redAccent,
        dotSpacing: 20.0,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.black.withOpacity(0.2),
        autoplay: true,
        animationCurve: Curves.easeInOut,
      ),
    );
  }
}
