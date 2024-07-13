import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WebSeriesSection extends StatelessWidget {
  WebSeriesSection({super.key});

  final List names = [
    "Spider Man",
    "Spider Man 2",
    "Spider Man 3",
    "Spider Man 4",
  ];
  final List _images = [
    "assets/spider-man.png",
    "assets/spiderman1.jpg",
    "assets/spiderman2.jpg",
    "assets/spiderman3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            height: 500,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(milliseconds: 2000),
            viewportFraction: 0.65),
        items: [
          for (int i = 0; i < _images.length; i++)
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          _images[i],
                          fit: BoxFit.cover,
                          height: 300,
                          width: 450,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "PG-13",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Row(children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  )
                                ]),
                                Text(
                                  "Action",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(names[i],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    ]);
  }
}
