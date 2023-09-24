import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final corouselindexprovider = StateProvider((ref) => 0);

class Carouselbed extends ConsumerWidget {
  const Carouselbed({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List imageslider = [
      {"id": 1, "image_path": 'assets/f1.png'},
      {"id": 2, "image_path": 'assets/f2.png'},
      {"id": 3, "image_path": 'assets/f1.png'},
      {"id": 4, "image_path": 'assets/f2.png'},
      {"id": 5, "image_path": 'assets/f1.png'},
      {"id": 6, "image_path": 'assets/f2.png'},
      {"id": 7, "image_path": 'assets/f1.png'},
      {"id": 8, "image_path": 'assets/f2.png'},
      {"id": 9, "image_path": 'assets/f1.png'},
      {"id": 10, "image_path": 'assets/f2.png'},
    ];
    final CarouselController carouselController = CarouselController();
    var size = MediaQuery.of(context).size;
    int currentindex = ref.watch(corouselindexprovider);
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        CarouselSlider(
            items: imageslider
                .map((item) => Container(
                      margin: EdgeInsets.only(left: 7, right: 7),
                      height: size.height * 0.2,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ))
                .toList(),
            carouselController: carouselController,
            options: CarouselOptions(
              height: size.height * 0.15,
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: true,
              aspectRatio: 2,
              viewportFraction: 0.5,
              onPageChanged: (index, reason) {
                ref.read(corouselindexprovider.notifier).state = index;
              },
            )),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageslider.asMap().entries.map((entry) {
            print(entry);
            print(entry.key);
            return GestureDetector(
              onTap: () => carouselController.animateToPage(entry.key),
              child: Container(
                width: 7,
                height: 7.0,
                margin: EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentindex == entry.key
                      ? Color.fromRGBO(14, 60, 110, 1)
                      : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
