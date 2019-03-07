import 'package:flutter/material.dart';

class Newlayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Layout Demo",
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                """1.Container 单个widget布局（类似 div标签）
①类似盒模型，只能有一个 child
②可以设置widget 宽高、margin(通过EdgeInsets类进行设置)、padding（同margin）
③通过decoration属性可以设置border及圆角
④通过alignment属性，可以设置子元素对齐方式
⑤通过color设置元素背景颜色""",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text(
                    "100*100",
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text("2.线性布局"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text("""Ⅰ.Row 水平布局
可以在水平方向排列子Widget，有四个重要属性
textDirection 控制主轴是从左到右还是从右到左排列（顺序）
mainAxisAlignment 控制子widget在水平方向的对齐方式
verticalDirection 控制纵轴从上到下还是从下到上
crossAxisAlignment 控制纵轴子元素对齐方式"""),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text("""①mainAxisAlignment: MainAxisAlignment.center,
    textDirection: TextDirection.rtl,"""),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text('1'),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text('2'),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('3'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text("""②mainAxisAlignment: MainAxisAlignment.end,
    textDirection: TextDirection.ltr,"""),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text('1'),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text('2'),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('3'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                  """③mainAxisAlignment: MainAxisAlignment.spaceBetween"""),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text('1'),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text('2'),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('3'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text("""④verticalDirection: VerticalDirection.up,
    crossAxisAlignment: CrossAxisAlignment.start"""),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                verticalDirection: VerticalDirection.up,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text('1'),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text('2'),
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('3'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text("""⑤crossAxisAlignment: CrossAxisAlignment.start"""),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text('1'),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text('2'),
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('3'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text("""⑥verticalDirection: VerticalDirection.down,
    crossAxisAlignment: CrossAxisAlignment.start"""),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                verticalDirection: VerticalDirection.down,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text('1'),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text('2'),
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('3'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text("""Ⅱ.Column 水平布局 
参数基本与Row一样"""),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text("""3.弹性布局
类似与web端的flex
基本参数同 Row，Column，这两个就是继承自flex。
direction控制主轴方向，
Expanded子widget可以弹性伸缩，通过设置其flex属性"""),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text('1'),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: Text('2'),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('3'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text("""4.流式布局
超出屏幕显示范围会自动折行的布局称为流式布局，
通过Wrap和Flow来实现，大部分属性与Flex类似，
主要是超出屏幕范围的属性"""),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text("""
spacing：主轴方向子widget的间距，
runSpacing：纵轴方向的间距
runAlignment：纵轴方向的对齐方式"""),
            ),
            Wrap(
              spacing: 10.0,
              runSpacing: 4.0,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text("A")),
                  label: Text("chipA"),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.green, child: Text("B")),
                  label: Text("chipB"),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.red, child: Text("C")),
                  label: Text("chipC"),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.black, child: Text("D")),
                  label: Text("chipD"),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey, child: Text("E")),
                  label: Text("chipE"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text("""5.层叠布局
主要关于z轴与定位相关的布局
Stack和Positioned实现绝对定位
Stack允许子widget堆叠，Positioned给子widget定位"""),
            ),
            Container(
              height: 300,
              color: Colors.lightBlue,
              child: Stack(
                alignment: Alignment.center,
                // fit: StackFit.expand, //未定位widget占满Stack整个空间
                children: <Widget>[
                  Container(
                    child: Text("Hello world",
                        style: TextStyle(color: Colors.white)),
                    color: Colors.pinkAccent,
                  ),
                  Positioned(
                    right: 0.0,
                    top: 20.0,
                    child: Container(
                      color: Colors.red,
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    top: 20.0,
                    child: Container(
                      color: Colors.green,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text("""z轴上的前轴层叠位置目前主要受widget顺序控制"""),
            ),
          ],
        ));
  }
}
