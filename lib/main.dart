import 'package:flutter/material.dart';
import 'package:demo/log.dart';
import 'msgLog.dart';
import 'forgetPwd.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new MyHomePage(title:  'Flutter Demo Home Page'),
        '/new': (BuildContext context) => new ArticleListScreen(),
        '/forget': (BuildContext context) => new ForgetPwd(),
        '/': (BuildContext context) => new Home()
      },
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

