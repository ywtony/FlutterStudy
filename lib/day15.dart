import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///组件装饰和视觉效果
///透明度
class OpacityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '透明效果Opacity',
      home: Scaffold(
        appBar: AppBar(
          title: Text('透明效果Opacity示例'),
        ),
        body: Center(
          child: Opacity(
            opacity: 0.3,
            child: Container(
              width: 250,
              height: 250,
              //添加装饰器
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                '不透明度为0.3',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///装饰盒子 DecorationedBox
///
class DecorationBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '装饰盒子',
      home: Scaffold(
        appBar: AppBar(
          title: Text('装饰盒子效果示例DecorationBox'),
        ),
        body: ListView(
          children: <Widget>[
            //图片装饰器
            Container(
              width: 150,
              height: 150,
              //图片装饰器
              decoration: BoxDecoration(
                  //背景色
                  color: Colors.grey,
                  image: DecorationImage(
                      image: ExactAssetImage('images/girl3.jpg'),
                      fit: BoxFit.cover)),
            ),
            //边框圆角处理
            Container(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    //
                    color: Colors.white,
                    //添加边框
                    border: Border.all(color: Colors.red, width: 8)
                    //添加弧度
                    ,
                    borderRadius: BorderRadius.circular(4)),
                child: Image.asset(
                  'images/girl4.jpg',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(color: Colors.white,
                  //边框阴影效果
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8.0,
                        spreadRadius: 8,
                        offset: Offset(-1.0, 1.0))
                  ]),
              child: Text('阴影效果'),
            ),
            //渐变处理
            Container(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    //线性渐变
                    gradient: LinearGradient(
                        begin: const FractionalOffset(0.5, 0),
                        end: const FractionalOffset(1.0, 1),
                        //渐变颜色集合
                        colors: <Color>[
                      Colors.red,
                      Colors.grey,
                      Colors.green,
                      Colors.blue
                    ])),
                child: Text('渐变处理'),
              ),

            )
          ],
        ),
      ),
    );
  }
}
