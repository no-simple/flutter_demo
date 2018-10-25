import 'package:flutter/material.dart';
import 'homePage.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState () {
    return new _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    new HomeNavigator(),
    new Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home')),
            new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('Profile'))
          ],
        currentIndex: _currentIndex,
        onTap:  (int index) {
            setState(() {
              _currentIndex = index;
            });
        },
      ),
    );
  }
}

// 传值
class PlaceholderWidget extends StatelessWidget {
//  传值类型定义  start **************************
  final String text;
  PlaceholderWidget(this.text);
//  传值类型定义  end **************************
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text(text),
    );
  }
}