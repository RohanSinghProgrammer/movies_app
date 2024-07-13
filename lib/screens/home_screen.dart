import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/widgets/movies_section.dart';
import 'package:movies_app/widgets/tv_shows_section.dart';
import 'package:movies_app/widgets/web_series_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<String> _images = [
    'assets/deadpool.jpg',
    'assets/spiderman3.jpg',
    'assets/ironman3.jpg',
    'assets/thor3.jpg'
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // drawer: const Drawer(),
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          foregroundColor: Colors.white,
          title: const Text('Movies Buzz'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: ListView(children: [
          const SizedBox(
            height: 12,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 230,
              autoPlay: true,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
            ),
            items: _images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(i),
                          fit: BoxFit.cover,
                        )),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 30,
          ),
          TabBar(
              controller: _tabController,
              unselectedLabelStyle: const TextStyle(
                color: Colors.grey,
              ),
              indicatorColor: Colors.redAccent,
              dividerHeight: 0,
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              tabs: const <Widget>[
                Tab(text: 'Movies'),
                Tab(text: 'TV Shows'),
                Tab(text: 'Web Series'),
              ]),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: [
              MoviesSection(),
              TvShowsSection(),
              WebSeriesSection()
            ][_tabController.index],
          )
        ]),
      ),
    );
  }
}
