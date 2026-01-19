import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'images/1.jpg',
      'images/2.jpg',
      'images/3.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('العروض')),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
          ),
          items: images.map((img) {
            return Image.asset(
              img,
              width: double.infinity,
              fit: BoxFit.cover,
            );
          }).toList(),
        ),
      ),
    );
  }
}