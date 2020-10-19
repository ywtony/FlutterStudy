import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "容器组件示例",
        home: Scaffold(
          appBar: AppBar(
            title: Text("容器组件"),
          ),
          body: Center(
            //添加容器
            child: Container(
              width: 200,
              height: 200,
              //添加边界装饰效果
              decoration: BoxDecoration(
                color: Colors.white,
                //设置上下左右四个边框
                border: new Border.all(
                    color: Colors.grey, //边框颜色
                    width: 8 //边框粗细为8
                    ),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(8.0)),
              ),
              child: Text(
                "Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
        ));
  }
}
