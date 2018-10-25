import 'package:flutter/material.dart';
import 'msgLog.dart';
class HomeNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Navigator(
        initialRoute: 'home',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case 'home':
              builder = (BuildContext context) => new HomePage();
              break;
            case 'demo1':
              builder = (BuildContext context) => new ArticleListScreen();
              break;
            default:
              throw new Exception('Involod route:${settings.name}');
          }
          return new MaterialPageRoute(builder: builder, settings: settings);
        }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('home'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('demo1'),
            onPressed: () {
            Navigator.of(context).pushNamed('demo1');
            }
        ),
      ),
    );
  }
}