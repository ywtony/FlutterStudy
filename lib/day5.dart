import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///列表组件

class ListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "列表组件示例",
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表组件"),
      ),
      body: ListView(
        //添加静态数据
        children: [
          //ListTitle是一种样式，相对固定的列表项,比如微信的发现页面
          ListTile(
            //添加图标
            leading: Icon(Icons.alarm),
            //添加文本
            title: Text("Alarm"),
          ),
          ListTile(
            leading: Icon(Icons.volume_up),
            title: Text("Volume_UP"),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text("Mail"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("手机"),
          ),
          ListTile(
            leading: Icon(Icons.mobile_friendly),
            title: Text("Mobile_friendly"),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Map"),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("AC_UNIT"),
          ),
          ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Accessibility"),
          )
        ],
      ),
    );
  }
}

//水平列表组件
class HListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "水平列表组件",
      home: HListViewDemo(),
    );
  }
}

class HListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("水平列表组件"),
      ),
      //添加容器
      body: Container(
        //顶部外边距为20
        margin: EdgeInsets.symmetric(vertical: 20),
        //设置容器高度
        height: 200,
        //列表卡
        child: ListView(
          //设置水平方向排列
          scrollDirection: Axis.horizontal,
          //添加子元素
          children: <Widget>[
            //每个container即为一个列表项
            Container(
              width: 160,
              color: Colors.lightBlue,
            ),
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.amber,
            ),
            Container(
              width: 160,
              color: Colors.black,
            ),
            //此容器中水平及列表文字垂直布局
            Container(
              width: 160,
              color: Colors.redAccent,
              //垂直布局
              child: Column(
                children: <Widget>[
                  Text(
                    '水平',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  Text(
                    '列表',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//长列表组件
class LargeListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "长列表组件",
      home: LargeListViewDemo(
          items: new List<String>.generate(500, (i) => "item$i")),
    );
  }
}

class LargeListViewDemo extends StatelessWidget {
  //列表数据集合
  final List<String> items;

  //构造方法用于接收列表数据
  LargeListViewDemo({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("长列表示例"),
      ),
      //使用ListView.builder来构造列表项
      body: ListView.builder(
        //列表长度
        itemCount: items.length,
        //列表项构造器，context为上下文，index表视列表项索引
        itemBuilder: (context, index) {
          //返回列表项
          return ListTile(
            //左侧图标
            leading: Icon(Icons.alarm),
            //文本内容
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}

///网格列表
class GridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "网格列表示例",
      home: GridViewDemo(),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网格列表示例"),
      ),
      //使用GridView构建网格
      body: GridView.count(
        primary: false,
        //四周增加一定的空隙
        padding: const EdgeInsets.all(20),
        //
        crossAxisSpacing: 30,
        //一行上放三列表数据
        crossAxisCount: 3,
        //数据项，五行三列
        children: <Widget>[
          const Text("列表数据不得了"),
          const Text("列表数据不得了"),
          const Text("列表数据不得了"),
          const Text("列表数据不得了"),
          const Text("列表数据不得了"),
          const Text("列表数据不得了"),
          const Text("列表数据不得了"),
          const Text("列表数据不得了"),
          const Text("列表数据不得了"),
          const Text("列表数据不得了")
        ],
      ),
    );
  }
}
