import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieScreen extends StatelessWidget {
  MovieScreen({super.key});

  final List _images = [
    "assets/deadpool.jpg",
    "assets/Thor Love And Thunder.jpg",
    "assets/spiderman3.jpg",
    "assets/ironman3.jpg",
    "assets/spiderman1.jpg",
    "assets/spiderman2.jpg",
    "assets/spiderman3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Opacity(
        opacity: 0.4,
        child: Image.asset(
          'assets/cover2.jpg',
          fit: BoxFit.cover,
          height: 310,
          width: double.infinity,
        ),
      ),
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_rounded,
                          color: Colors.yellow,
                        ))
                  ]),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.yellow.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8)
                      ]),
                  child: Image.asset(
                    'assets/deadpool3.jpg',
                    height: 280,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 32),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.yellow.withOpacity(0.9),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.yellow.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 8)
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      size: 56,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF1D1D28).withOpacity(0.9),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8)
                          ]),
                      child: const Icon(
                        Icons.add,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF1D1D28).withOpacity(0.9),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8)
                          ]),
                      child: const Icon(
                        Icons.favorite_outline,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF1D1D28).withOpacity(0.9),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8)
                          ]),
                      child: const Icon(
                        Icons.download,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF1D1D28).withOpacity(0.9),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8)
                          ]),
                      child: const Icon(
                        Icons.share,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "DeadPool & Wolverine",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Wolverine in recovering from his injury when he crosses paths with the loudmouth, Deadpool. They tem up to defeat a common enemy",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recommended",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "See all",
                              style: TextStyle(
                                color: Colors.yellow.withOpacity(0.8),
                              ),
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < _images.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  _images[i],
                                  height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                        ],
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    ]));
  }
}
