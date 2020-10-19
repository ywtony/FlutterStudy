//Flutter程序的入口

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/day1.dart';
import 'package:flutter_app/day4.dart';

import 'day2.dart';
import 'day3.dart';
import 'day5.dart';

class LaucherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter各种组件案例',
      home: _LauncherApp(),
    );
  }
}

class Item {
  final String name;
  final Widget widget;

  Item(this.name, this.widget);
}

class _LauncherApp extends StatelessWidget {
  final List<Item> items = List<Item>();

  _LauncherApp() {
    _initData();
  }

  //初始化列表数据
  List<Item> _initData() {
    items.add(Item("容器组件Container", MyApp()));
    items.add(Item("图片组件-网络图片Image.network", ImageApp()));
    items.add(Item("文本组件Text", TextApp()));
    items.add(Item("图标组件Icon", IconApp()));
    items.add(Item("图标按钮组件IconButton", IconButtonApp()));
    items.add(Item("凸起按钮组件RaisedButton", RaisedButtonApp()));
    items.add(Item("列表ListView组件", ListViewApp()));
    items.add(Item("水平列表ListView组件", HListViewApp()));
    items.add(Item("长列表ListView组件", LargeListViewApp()));
    items.add(Item("网格列表", GridViewApp()));

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter各种组件汇总"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].name),
            //ListTile点击事件
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => items[index].widget));
            },
          );
        },
      ),
    );
  }
}
