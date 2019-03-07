import 'package:flutter/material.dart';

class Newelement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Element Demo',
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("""1.Text 文本
①对齐方式  
通过textAlign属性设置，其对齐方式是相对于自身宽度而言，一般指多行文本的对齐方式。
                """),
                  Text('center居中对齐' * 6,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        background: new Paint()..color = Colors.blue,
                      )),
                  Text('left左对齐' * 10,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        background: new Paint()..color = Colors.yellow,
                      )),
                  Text('right右对齐' * 10,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        background: new Paint()..color = Colors.red,
                      )),
                  Text("""
②文字截断  
通过 maxLines属性设置多行文本显示的行数，
overflow：TextOverflow设置省略的样式         
"""),
                  Text(
                    'ellipsis末尾省略号' * 20,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      background: new Paint()..color = Colors.blue,
                    ),
                  ),
                  Text('clip两行截断' * 20,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        background: new Paint()..color = Colors.yellow,
                      )),
                  Text('fade消失' * 20,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        background: new Paint()..color = Colors.red,
                      )),
                  Text("""
③基本文字属性 
通过 style 属性 TextStyle Widget 来设置相关的属性。
color字体颜色，fontSize字体大小，height行高，fontFamily字体类型，background背景颜色，decoration下划线格式，decorationStyle下划线style           
                """),
                  Text(
                    "Hello world",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18.0,
                        height: 1.2,
                        fontFamily: "Courier",
                        background: new Paint()..color = Colors.yellow,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dashed),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text("""2.TextSpan (类似与span标签，将一段内容分成多部分)
通过Text.rich(TextSpan())"""),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text.rich(TextSpan(children: [
                TextSpan(text: '第一部分: '),
                TextSpan(
                    text: "https://flutterchina.club",
                    style: TextStyle(
                      color: Colors.blue,
                    ))
              ])),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text("3.Button"),
            ),
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("①常见的四种button，第四种是Iconbutton"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text("RaisedButton"),
                          onPressed: () => {},
                        ),
                        FlatButton(
                          child: Text("FlatButton"),
                          onPressed: () => {},
                        ),
                        OutlineButton(
                          child: Text("OutlineButton"),
                          onPressed: () => {},
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () => {},
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("""②自定义button样式
在上述四种button基础上可以自定义一些属性
例如color设置背景颜色，highlightColor设置点击时的背景颜色，shap外形等等"""),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: FlatButton(
                        color: Colors.blue,
                        highlightColor: Colors.blue[700],
                        colorBrightness: Brightness.dark,
                        splashColor: Colors.grey,
                        child: Text("Submit"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      alignment: Alignment.centerLeft,
                      child: Text("4.加载图片与Icon"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("""①图片加载 
(从aseet中加载图片与Icon）
在根目录下创建images目录，将图片放在该目录下
在pubspec.yaml中配置对应图片的路径
在Image类中通过AssetImage("images/avatar.png")来加载 """),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Image(
                          image: AssetImage("images/avatar.png"), width: 100.0),
                    ),

                    // Image.asset(
                    //   "images/avatar.png",
                    //   width: 100.0,
                    // ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("""(使用网络加载图片) 
通过Image.network()来实现"""),
                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Image(
                          image: NetworkImage(
                              "https://jessicahk-uat-resources.s3-ap-southeast-1.amazonaws.com/files/2_343.jpg"),
                          width: 100.0,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("""②Icon加载
直接使用Material Design默认字体图标,通过Icon类引用。
通过Icon的color属性设置颜色，sizi属性设置大小 """),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.fingerprint,
                            color: Colors.green,
                            size: 50,
                          ),
                          Icon(
                            Icons.explore,
                            color: Colors.blue,
                            size: 50,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.pink[300],
                            size: 50,
                          ),
                          Icon(
                            Icons.thumb_up,
                            color: Colors.red,
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("""使用自定义图标
使用Iconfont来加载自定义图标。
Ⅰ、从Iontfont网站以unicode的形式下载ttf格式字体放入根目录fonts文件夹中；
Ⅱ、在pubspec.yaml文件中设置字体配置，给字体取个family；
Ⅲ、通过Icon类中设置IconData来引入字体，对应图标的内容为unicode的编码，如iconfont网站图标名&#xe666;在使用中应该是0xe666
 """),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            IconData(0xe87a,
                                fontFamily: 'myIcon', matchTextDirection: true),
                            color: Colors.green,
                            size: 50,
                          ),
                          Icon(
                            IconData(0xe666,
                                fontFamily: 'myIcon', matchTextDirection: true),
                            color: Colors.blue,
                            size: 50,
                          ),
                          Icon(
                            IconData(0xe6e0,fontFamily: 'myIcon', matchTextDirection: true),
                            color: Colors.pink[300],
                            size: 50,
                          ),
                          Icon(
                            IconData(0xe600,fontFamily: 'myIcon', matchTextDirection: true),
                            color: Colors.red,
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
