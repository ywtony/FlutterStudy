//Flutter程序的入口
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/day7.dart';

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
  final int id;
  final String name;

  Item(this.id, this.name);
}

class _LauncherApp extends StatelessWidget {
  final List<Item> items = List<Item>();

  _LauncherApp() {
    _initData();
  }

  //初始化列表数据
  List<Item> _initData() {
    items.add(Item(1, "容器组件Container"));
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
             // Navigator.push(context, MaterialPageRoute(builder: ()=>));
            },
          );
        },
      ),
    );
  }
}
