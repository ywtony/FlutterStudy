import 'package:flutter/material.dart';

/**
 * 图片组件测试
 * **/

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "图片组件",
      home:ImageDemo(),
    );
  }

}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //居中显示
    return Center(
      //添加图片
      child: Image.network(
        //图片url
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602408800136&di=7c7fa1b47a1bb6074c636774567931f7&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fa9e502a5f129bef32744814352bd134c095c1896181b4-HD1Whs_fw658',
        //填充模式
        fit: BoxFit.fitWidth,
      ),
    );
  }

}
