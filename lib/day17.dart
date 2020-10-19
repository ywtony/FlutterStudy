import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///裁剪
///
class ClipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '裁剪Clip示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('裁剪组件Clip示例'),
        ),
        body: Column(
          children: <Widget>[
            //圆形裁剪
            ClipOval(
              //固定大小
              child: SizedBox(
                width: 150,
                height: 150,
                //添加图片
                child: Image.asset(
                  'images/girl10.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //圆角矩形裁剪
            ClipRRect(
              //圆角矩形裁剪
              borderRadius: BorderRadius.all(
                  //圆角弧度
                  Radius.circular(30)),
              //固定大小
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset(
                  'images/girl4.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            //矩形裁剪
            ClipRect(
              //指定自定义Clipper
              clipper: RectClipper(),
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('images/girl5.jpg'),
              ),
            ),
            //路径裁剪
            ClipPath(
              clipper: TriangleClipper(),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('images/girl1.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///自定义clipper
class RectClipper extends CustomClipper<Rect> {
  //重写获取裁剪范围
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(100, 100, 0, size.width);
  }

  //重写是否重新裁剪
  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}

///自定义三角裁剪
class TriangleClipper extends CustomClipper<Path> {
  //获取重新裁剪范围
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.moveTo(50, 50);
    path.lineTo(50, 10);
    path.lineTo(100, 50);
    path.close();
    return path;
  }

  //重写是否重新裁剪
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
