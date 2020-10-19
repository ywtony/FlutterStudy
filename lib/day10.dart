import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///宽高尺寸处理布局
///
///SizedBox 布局
class SizeBoxLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox布局示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SizedBox布局示例'),
        ),
        body: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Card(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Image.asset(
                  'images/girl5.jpg',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///ConstrainedBox (限定最大，最小宽高布局)

class ConstrainedBoxLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '限定最大最小宽高布局示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('限定最大最小宽高布局'),
        ),
        body: ConstrainedBox(
          //设置限定值
          constraints: const BoxConstraints(
            minWidth: 150,
            minHeight: 150,
            maxWidth: 220,
            maxHeight: 220,
          ),
          //子容器
          child: Container(
            width: 300,
            height: 300,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

///限定最大宽高布局LimitedBox
///
///
class LimitedBoxLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '限定最大宽高布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('限定最大宽高布局LimitedBox'),
        ),
        body: SizedBox(
            height: 150,
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image.asset('images/girl4.jpg'),
                ),
                LimitedBox(
                  maxWidth: 150,
                  child: Image.asset('images/girl9.jpg'),
                )
              ],
            )),
      ),
    );
  }
}

///固定宽高比布局 AspectRadio
///
class AspectRadioLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '固定宽高比布局AspectRadio',
      home: Scaffold(
        appBar: AppBar(
          title: Text('固定宽高比布局示例AspectRadio'),
        ),
        body: Container(
          height: 200,
          child: AspectRatio(
            aspectRatio: 1.5,
            child: Image.asset('images/girl7.jpg'),
          ),
        ),
      ),
    );
  }
}

///
///按照百分比布局FractionallySizedBox
class FractionallySizedBoxLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '按照宽高比布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('按照宽高比布局'),
        ),
        body: Container(
          width: 200,
          height: 200,
          color: Colors.blueGrey,
          child: FractionallySizedBox(
            alignment: Alignment.topLeft,
            widthFactor: 0.5,
            heightFactor: 1.5,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

///网格布局GridView
///
class GridViewLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTitleList(int count) {
      //index为列表索引
      return List<Container>.generate(
          count,
          (index) => Container(
                  //根据索引添加图片路径
                  child: Container(
                width: 135,
                height: 135,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/girl${index + 1}.jpg'),
                ),
              )));
    }

    //渲染GridView
    Widget buildGrid() {
      return GridView.extent(
        //次轴宽度
        maxCrossAxisExtent: 150,
        //上下左右内边
        padding: const EdgeInsets.all(4.0),
        //主轴元素间距
        mainAxisSpacing: 4.0,
        //次轴元素间距
        crossAxisSpacing: 4.0,
        //添加九个元素
        children: _buildGridTitleList(9),
      );
    }

    return MaterialApp(
      title: '网格布局GridView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('网格布局GridView示例'),
        ),
        body: Center(
          child: buildGrid(),
        ),
      ),
    );
  }
}

///Table布局
///
class TableLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Table布局示例'),
        ),
        body: Center(
          child: Table(
            //设置表格有多少列，并且制定列宽
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(100),
              1: FixedColumnWidth(40),
              2: FixedColumnWidth(80),
              3: FixedColumnWidth(80)
            },
            //设置表格边框样式
            border: TableBorder.all(
              color: Colors.black38,
              width: 2,
              style: BorderStyle.solid,
              //添加数据
            ),
            children: <TableRow>[
              //添加第一行数据
              TableRow(children: <Widget>[
                Text('姓名'),
                Text('性别'),
                Text('年龄'),
                Text('身高')
              ]),
              //添加第二行数据
              TableRow(children: <Widget>[
                Text('杨落落'),
                Text('男'),
                Text('2'),
                Text('90cm')
              ])
              //添加第三行数据
              ,
              TableRow(children: <Widget>[
                Text('郑涵涵'),
                Text('女'),
                Text('6'),
                Text('1.1m')
              ])
              //添加第四行数据
              ,
              TableRow(children: <Widget>[
                Text('孙依依'),
                Text('女'),
                Text('6'),
                Text('1.1m')
              ])
            ],
          ),
        ),
      ),
    );
  }
}
