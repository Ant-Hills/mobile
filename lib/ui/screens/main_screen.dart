import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  PreloadPageController _pageController = PreloadPageController();

  /// Changes the displayed tab to the specified [index]
  _onTabClicked(int index) {
    if (_index != index) {
      setState(() {
        _index = index;
      });

      _pageController.jumpToPage(_index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PreloadPageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onTabClicked,
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.home, size: 30),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.search, size: 30),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.shopping_cart, size: 30),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.account_circle, size: 30),
          ),
        ],
      ),
    );
  }
}
