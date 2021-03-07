import 'package:flutter/material.dart';
import 'package:mu_profile/screen/gallery_screen.dart';
import 'package:mu_profile/screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  var pages = [
    ProfileScreen(),
    GalleryScreen(),
  ];

  // ignore: missing_return
  int _setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text(
            "xMiCx",
          ),
        ),
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _setCurrentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_album),
              label: "Gallery",
            ),
          ],
        ),
      ),
    );
  }
}
