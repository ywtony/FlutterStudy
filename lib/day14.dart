import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///手势检测
///
class GestureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '触摸点击事件',
        home: Scaffold(
            appBar: AppBar(
              title: Text('触摸点击事件'),
            ),
            body: Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  //底部消息
                  final sanckBar = new SnackBar(
                    content: new Text('您已按下'),
                  );
                  Scaffold.of(context).showSnackBar(sanckBar);
                },
                //添加容器接收触摸动作
                child: Container(
                  padding: EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Theme.of(context).buttonColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('测试按钮'),
                ),
              ),
            )));
  }
}

///滑动删除
///Dismissible实现滑动删除
class DismissibleApp extends StatelessWidget {
  //构建30条列表数据
  List<String> items =
      new List<String>.generate(30, (index) => '列表项${index + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '使用Dismissible实现滑动删除',
      home: Scaffold(
        appBar: AppBar(
          title: Text('使用Dismissible实现滑动删除'),
        ),
        //构建列表
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            //提取被删除的项
            final item = items[index];
            //返回一个可以被删除的列表项
            return Dismissible(
              key: Key(item),
              //被删除的回调
              onDismissed: (direction) {
                //移除制定索引
                items.removeAt(index);
                //底部提示消息提示，当前项被删除了
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text("$item被删除了")));
              },
              child: ListTile(
                title: Text('$item'),
              ),
            );
          },
        ),
      ),
    );
  }
}
