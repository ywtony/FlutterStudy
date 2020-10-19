import 'package:flutter/material.dart';

/**
 * 图标及按钮组件
 * */
class IconApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "图标组件示例",
      home: IconDemo(),
    );
  }
}

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图标示例"),
      ),
      //添加图标
      body: Icon(
        //图标内容
        Icons.phone,
        //图标颜色
        color: Colors.green[500],
        //图标大小
        size: 81,
      ),
    );
  }
}

/// 图标按钮组件
class IconButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "图标按钮示例",
      home: IconButtonDemo(),
    );
  }
}

class IconButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图标按钮示例"),
      ),
      body: Center(
        //添加图标按钮
        child: IconButton(
          //图标元素
          icon: Icon(
            Icons.volume_up,
            size: 48,
          ),
          //按钮提示
          tooltip: "按下操作",
          //按下事件响应
          onPressed: () {
            print("按下操作");
          },
        ),
      ),
    );
  }

}

///凸起按钮组件

class RaisedButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "凸起按钮示例",
      home:RaisedButtonDemo(),
    );
  }

}

class RaisedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("凸起按钮图标"),
      ),
      body: Center(
        //RaisedButton具有一种立体感
        child: RaisedButton(
          //按下事件响应
            onPressed: () {
              print("响应按下事件");
            },
            //添加按钮文本
            child: Text(
                "RaisedButton"
            )

        ),
      ),
    );
  }

}
