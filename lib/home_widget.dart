import 'package:flutter/material.dart';
import 'package:travel_budget/home_view.dart';
import 'pages.dart';
import 'home_view.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    ExplorePage(),
    PastTripPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Budget App'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.explore),
            title: new Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.history),
            title: new Text('Past trips'),
          )
        ],
      ),
    );
  }

  void onTapTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}
