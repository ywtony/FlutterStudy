//Flutter程序的入口

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/day1.dart';
import 'package:flutter_app/day4.dart';

import 'day10.dart';
import 'day11.dart';
import 'day12.dart';
import 'day13.dart';
import 'day14.dart';
import 'day15.dart';
import 'day16.dart';
import 'day17.dart';
import 'day18.dart';
import 'day19.dart';
import 'day2.dart';
import 'day3.dart';
import 'day5.dart';
import 'day6.dart';
import 'day7.dart';
import 'day8.dart';
import 'day9.dart';

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
    items.add(Item("表单TextFormField", FormApp()));
    items.add(Item("导航条AppBar", NavicationApp()));
    items.add(Item("配置路由导航Route", RouteApp()));
    items.add(Item("脚手架Scaffold", ScaffoldApp()));
    items.add(Item("Appbar图标按钮", AppBarApp()));
    items.add(Item("底部导航组件BottomNavigationBar", BottomNavigationBarApp()));
    items.add(Item("水平选项卡视图组件TabBar", DefaultTabControllerApp()));
    items.add(Item("水平选项卡完整示例TabBarApp", TabBarApp()));
    items.add(Item("水平选项卡完整示例TabBarApp", TabBarApp()));
    items.add(Item("抽屉菜单DrawerApp", DrawerApp()));
    items.add(Item("悬浮按钮FloatingActionButton", FloatingActionButtonApp()));
    items.add(Item("扁平按钮FlatButton", FlatButtonApp()));
    items.add(Item("菜单组件PopupMenu", PopupMenuButtonApp()));
    items.add(Item("弹框SimpleDialog", SimpleDialogApp()));
    items.add(Item("弹框AlertDialog", AlertDialogApp()));
    items.add(Item("轻量级提示组件SnackBar", SnackBarApp()));
    items.add(Item("Card组件", CardApp()));
    items.add(Item("容器布局Container", ContinerApp()));
    items.add(Item("居中布局Center", CenterLayoutApp()));
    items.add(Item("Padding布局", PaddingLayoutApp()));
    items.add(Item("对齐布局Align", AlignLayoutApp()));
    items.add(Item("水平布局Row", RowLayoutApp()));
    items.add(Item("垂直布局Column", ColumnLayoutApp()));
    items.add(Item("缩放布局FittedBox", FittedBoxLayoutApp()));
    items.add(Item("Stack布局", StackAlignmentLayoutApp()));
    items.add(Item("IndexStack布局", IndexedStackLayoutApp()));
    items.add(Item("溢出父容器布局OverFlowBox布局", OverflowBoxLayoutApp()));
    items.add(Item("SizedBox布局", SizeBoxLayoutApp()));
    items.add(Item("限定最大最小宽高布局ConstrainedBox", ConstrainedBoxLayoutApp()));
    items.add(Item("限定最大宽高布局LimitedBox", LimitedBoxLayoutApp()));
    items.add(Item("固定宽高布局AspectRadio", AspectRadioLayoutApp()));
    items.add(
        Item("按照百分比布局FractionallySizedBox", FractionallySizedBoxLayoutApp()));
    items.add(Item("网格布局GridView", GridViewLayoutApp()));
    items.add(Item("Table布局", TableLayoutApp()));
    items.add(Item("ListView布局", ListViewLayoutApp()));
    items.add(Item("长文本滚动效果布局ListViewLage", ListViewLageTextLayoutApp()));
    items.add(Item("矩阵变换布局TransForm", TransFormLayoutApp()));
    items.add(Item("基准线布局BaseLine", BaseLineLayoutApp()));
    items.add(Item("控制是否显示组件布局OffStage", OffStageLayoutApp()));
    items.add(Item("按照宽高自动换行布局Warp", WarpLayoutApp()));
    items.add(Item("综合布局示例DetailPageApp", DetailPageApp()));
    items.add(Item("手势检测Gesture", GestureApp()));
    items.add(Item("滑动删除Dismissible", DismissibleApp()));
    items.add(Item("透明度布局Opacity", OpacityApp()));
    items.add(Item("装饰盒子布局DecorationBox", DecorationBoxApp()));
    items.add(Item("旋转盒子布局RoatedBox", RoatedBoxApp()));
    items.add(Item("裁剪Clip", ClipApp()));
    items.add(Item("路由跳转（Rotue）综合案例", ARouteHomePage()));
    items.add(Item("动画字体放大效果实现", FontAnimation()));

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
