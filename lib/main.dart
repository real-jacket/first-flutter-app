import 'package:flutter/material.dart';

import 'demo/layout.dart';
import 'demo/element.dart';
import 'demo/router.dart';
import 'demo/animate.dart';

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
      routes: {
        "new_layout": (context) => Newlayout(),
        "new_element": (context) => Newelement(),
        "new_router": (context) => Newrouter(),
        "new_animate":(context) => Newanimate(),
      },
      home: MyHomePage(title: 'Flutter Demo List'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  child: Text(
                    "1.基本元素",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'new_element');
                  },
                )),
            Divider(),
            Container(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  child: Text(
                    "2.基本布局",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'new_layout');
                  },
                )),
            Divider(),
            Container(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  child: Text(
                    "3.路由跳转",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'new_router');
                  },
                )),
            Divider(),
            Container(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  child: Text(
                    "4.动画",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'new_animate');
                  },
                )),
          ],
        ));
  }
}
