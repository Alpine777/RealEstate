import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'home/views/home_view.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        // appBar: AppBar(title: Text("Nav Bar")),
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              HomeView(),
              Container(
                color: Colors.teal,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          showElevation: true,
          backgroundColor: Colors.blueGrey[50],
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home),
                // inactiveColor: Colors.indigo,
                activeColor: Colors.deepPurple),
            BottomNavyBarItem(
                title: Text('Discussion'),
                icon: Icon(Icons.chat),
                // inactiveColor: Colors.cyan,
                activeColor: Colors.deepPurple),
            BottomNavyBarItem(
                title: Text('Profile'),
                icon: Icon(Icons.person),
                // inactiveColor: Colors.green,
                activeColor: Colors.deepPurple),
          ],
        ),
      ),
    );
  }
}
