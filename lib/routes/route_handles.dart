import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var homeHandler =Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Router Demo",
          textAlign: TextAlign.center,
        ),
      ),
      body: Text('demo')
    );
  }
);

var oneHandler =Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params){
    return Material(
      color: Colors.blue,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Padding(
            padding: new EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
            child: new Text(
              '这是第一个',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.red[200],
                height: 2.0,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 15.0),
            child: new ConstrainedBox(
              constraints: new BoxConstraints(minHeight: 42.0),
              child: new FlatButton(
                highlightColor:
                    Colors.white30,
                splashColor:
                    Colors.white30,
                onPressed: () {
                    Navigator.pop(context);
                },
                child: new Text(
                  "OK",
                  style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
);

var twoHandler =Handler(
  handlerFunc: (BuildContext context, Map<String,List<String>> params){
    return Material(
      color: Colors.yellow,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Padding(
            padding: new EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
            child: new Text(
              '这是第二个',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.red[200],
                height: 2.0,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 15.0),
            child: new ConstrainedBox(
              constraints: new BoxConstraints(minHeight: 42.0),
              child: new FlatButton(
                highlightColor:
                    Colors.white30,
                splashColor:
                    Colors.white30,
                onPressed: () {
                    Navigator.pop(context);
                },
                child: new Text(
                  "OK",
                  style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
);

var threeHandler =Handler(
  handlerFunc: (BuildContext context, Map<String,List<String>> params){
    return Material(
      color: Colors.green[200],
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Padding(
            padding: new EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
            child: new Text(
              '这是第三个',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.red[200],
                height: 2.0,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 15.0),
            child: new ConstrainedBox(
              constraints: new BoxConstraints(minHeight: 42.0),
              child: new FlatButton(
                highlightColor:
                    Colors.white30,
                splashColor:
                    Colors.white30,
                onPressed: () {
                    Navigator.pop(context);
                },
                child: new Text(
                  "OK",
                  style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
);