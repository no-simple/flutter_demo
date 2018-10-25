import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    //设置适配尺寸 (填入设计稿中设备的屏幕尺寸) 假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    print('设备宽度:${ScreenUtil.screenWidth}'); //Device width
    print('设备高度:${ScreenUtil.screenHeight}'); //Device height
    print('设备的像素密度:${ScreenUtil.pixelRatio}'); //Device pixel density
    print(
        '底部安全区距离:${ScreenUtil.bottomBarHeight}'); //Bottom safe zone distance，suitable for buttons with full screen
    print(
        '状态栏高度:${ScreenUtil.statusBarHeight}px'); //Status bar height , Notch will be higher Unit px

    print('实际宽度的dp与设计稿px的比例:${ScreenUtil().scaleWidth}');
    print('实际高度的dp与设计稿px的比例:${ScreenUtil().scaleHeight}');

    print(
        '宽度和字体相对于设计稿放大的比例:${ScreenUtil().scaleWidth * ScreenUtil.pixelRatio}');
    print(
        '高度相对于设计稿放大的比例:${ScreenUtil().scaleHeight * ScreenUtil.pixelRatio}');
    print('系统的字体缩放比例:${ScreenUtil.textScaleFactory}');
    Widget buildTextField (name, placeHolder) {
      return new Container(
          height: ScreenUtil().setHeight(100),
          child: new TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                labelText: placeHolder,
                prefixStyle: TextStyle(
                    letterSpacing: ScreenUtil().setWidth(10),
                    color: Color(0xFF333333)
                ),
                prefixText: name
            ),
          )
      );
    }
    return new Scaffold(
        body: new SingleChildScrollView(
            child: new Container(
              padding:new EdgeInsets.fromLTRB(ScreenUtil().setWidth(30), 0, ScreenUtil().setWidth(30), 0) ,
              color: Color(0xFFFFFFFF),
              child: new Column(
                children: <Widget>[
                  new Container(
                      height: ScreenUtil().setHeight(510),
                      child: new Center(
                        child: new Image.asset(
                          'asset/images/logo_01.png',
                          width: ScreenUtil().setWidth(102),
                          height: ScreenUtil().setWidth(114),
                        ),
                      )
                  ),
                  buildTextField('账号', '请输入账号'),
                  new Container(
                      margin: new EdgeInsets.only(top: ScreenUtil().setHeight(50)),
                      child: new Container(
                          height: ScreenUtil().setHeight(100),
                          child: new TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                                labelText: '请输入密码',
                                prefixStyle: TextStyle(
                                    letterSpacing: ScreenUtil().setWidth(10),
                                    color: Color(0xFF333333)
                                ),
                                prefixText: '密码',
                                suffixIcon: Icon(Icons.remove_red_eye)
                            ),
                          )
                      )
                  ),
                  new Container(
                    width: ScreenUtil().setWidth(690),
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(80)),
                    height: ScreenUtil().setHeight(70),
                    child: new RaisedButton(
                        onPressed: () {},
                        child: new Text(
                            '登录',
                            style: TextStyle(
                                color: Color(0xFFffffff)
                            )
                        ),
                        color: Color(0xFF1b82d2)
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(top: ScreenUtil().setHeight(20), bottom: ScreenUtil().setHeight(20)),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Expanded(
//                  child: new Text('忘记')
                            child: new Row(
                              children: <Widget>[
                                new FlatButton(
                                    padding: EdgeInsets.zero,

                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/forget');
//                                      Navigator.push(
//                                        context,
//                                        new MaterialPageRoute(builder: (context) => new ForgetPwd()),
//                                      );
                                    },


                                    child: Text(
                                  '忘记密码？',
                                  style: TextStyle(
                                      color: Color(0xFF1b82d2)
                                  ),
                                )
                                ),
                                new Expanded(child: new Text(''))
                              ],
                            )
                        ),
                        new FlatButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              // 命令导航路由模式
                              Navigator.of(context).pushNamed('/new');
//                              Navigator.push(context,
//                              new MaterialPageRoute(builder: (context) => new ArticleListScreen())
//                              );
                            },
                            child: Text('短信验证码登录',
                          style: TextStyle(
                              color: Color(0xFF1b82d2)
                          ),)
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}