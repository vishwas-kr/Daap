import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwipeBanner extends StatelessWidget {
  const SwipeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselController controller = CarouselController();
    List<String> items = [
      'https://media.istockphoto.com/id/108349181/photo/african-girl-eating-a-meal-in-the-orphanage.jpg?s=612x612&w=0&k=20&c=bvfPjrCgu_55fXD50DRNc9JCjO1iXGUkjjOUKPQYe3U=',
      'https://media.istockphoto.com/id/538570416/photo/poor-indian-family-on-the-street-in-allahabad-india.jpg?s=612x612&w=0&k=20&c=QNKeBwf1_YIE_d9MYwoySEZ9VZq-wa1MTsy0QEizwFY=',
      'https://media.istockphoto.com/id/637444368/photo/poor-indian-children-asking-for-food-india.jpg?s=612x612&w=0&k=20&c=8J1u1H6ea2I90IbIDzcSA-kaNk-LaxT5IF_M1i_NKwY=',
      'https://media.istockphoto.com/id/1223037093/photo/monks-of-ramakrishna-mission-donating-foods-during-lockdown-period.jpg?s=612x612&w=0&k=20&c=CGi7ptDh6RZd4ORN1fkLsr2FnCo_bORUqrL6j11QcYQ='
    ];

    return SizedBox(
      height: 0.33.sh,
      width: double.maxFinite,
      child: CarouselSlider(
        carouselController: controller,
        items: items
            .map(
              (e) => Builder(
                builder: (context) => Image.network(
                  e,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          viewportFraction: 1,
          autoPlay: true,
          autoPlayCurve: Curves.ease,
        ),
      ),
    );
  }
}
