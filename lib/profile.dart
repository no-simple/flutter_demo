import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Profile'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('log out'),
            onPressed: () {
            Navigator.of(context).pushNamed('/login');
            }
        ),
      ),
    );
  }
}