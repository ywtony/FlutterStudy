import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
    文本组件
 */

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "文本组件",
      home: TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本组件"),
      ),
      //垂直布局
      body: Column(
        children: <Widget>[
          //文本组件
          Text(
            "红色字体+黑色删除线+18号+斜体+粗体",
            style: TextStyle(
                //字体颜色
                color: const Color(0xffff0000),
                //文本装饰器，删除线
                decoration: TextDecoration.lineThrough,
                //文本装饰器删除线颜色
                decorationColor: const Color(0xff000000),
                //字体大小
                fontSize: 18,
                //字体粗细
                fontWeight: FontWeight.bold,
                //是否斜体
                fontStyle: FontStyle.italic,
                //文字间距
                letterSpacing: 2),
          ),
          Text(
            '橙色下划线+23号',
            style: TextStyle(
                color: const Color(0xffff9900),
                decoration: TextDecoration.underline,
                fontSize: 24),
          ),
          Text(
            '上划线+虚线+23号',
            style: TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 23,
                //字体样式
                fontStyle: FontStyle.normal),
          ),
          Text(
            '23号+斜体+加粗+字间距6',
            style: TextStyle(
                fontSize: 23,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 6),
          )
        ],
      ),
    );
  }
}
