import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    this.borderRadius,
    this.color,
    this.highlightColor,
    @required this.child,
  });
  //圆角角度
  final double borderRadius;
  // button背景颜色
  final Color color;
  // button高亮颜色
  final Color highlightColor;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: color ?? Colors.blue,
      highlightColor: highlightColor ?? Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: child,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 20.0)),
      onPressed: () => {},
    );
  }
}

class GradientButton extends StatelessWidget {
  GradientButton({
    this.colors,
    this.width,
    this.height,
    this.onTap,
    @required this.child,
  });

  // 渐变色数组
  final List<Color> colors;

  // 按钮宽高
  final double width;
  final double height;

  final Widget child;

  //点击回调
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    //确保colors数组不空
    List<Color> _colors = colors ??
        [theme.primaryColor, theme.primaryColorDark ?? theme.primaryColor];

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: _colors),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: colors.last,
          highlightColor: Colors.transparent,
          onTap: onTap,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: height, width: width),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultTextStyle(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    child: child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
