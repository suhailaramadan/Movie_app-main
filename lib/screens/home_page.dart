import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/theme/app_theme.dart';
import 'package:movie_app/view/Home_screen.dart';
import 'package:movie_app/view/browse.dart';
import 'package:movie_app/view/search_screen.dart';
import 'package:movie_app/view/wish_list.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/homeScreen";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = [
    HomeScreen(),
    const searchScreen(),
    const BrowseScreen(),
    const watchListScreen()
  ];
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        onTap: (index) {
          currIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Home icon.png")),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/search-2.png")),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icon material-movie.png")),
              label: 'Browse'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Path 28.png")),
              label: 'WatchList'),
        ],
      ),
      body: tabs[currIndex],
    );
  }
}
