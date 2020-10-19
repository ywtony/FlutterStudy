import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///其他布局
///
///TransForm矩阵变换布局
class TransFormLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '矩阵变换布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('矩阵变换布局示例'),
        ),
        body: Center(
          child: Container(
            color: Colors.blueGrey,
            //矩阵转换
            child: Transform(
              //对齐方式
              alignment: Alignment.topRight,
              //设置旋转值
              transform: Matrix4.rotationZ(0.3),
              //被旋转容器
              child: Container(
                padding: const EdgeInsets.all(9),
                color: const Color(0xFF58E81c),
                child: Image.asset('images/girl5.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///基准线布局 Baseline
class BaseLineLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '基准线布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('基准线布局示例BaseLine'),
        ),
        body: Row(
          //水平等间距排列子组件
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //设置基准线
            Baseline(
              baseline: 80,
              //对齐字符底部水平线
              baselineType: TextBaseline.alphabetic,
              //
              child: Text(
                'AaBbCc',
                style: TextStyle(
                    fontSize: 18, textBaseline: TextBaseline.alphabetic),
              ),
            ),
            Baseline(
              //
              baseline: 80,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 40,
                height: 40,
                color: Colors.green,
              ),
            ),
            Baseline(
              baseline: 80,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'DdEeFf',
                style: TextStyle(
                    fontSize: 26, textBaseline: TextBaseline.alphabetic),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///控制是否显示组件,Offstage
class OffStageLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '控制组件是否显示隐藏Offstage',
      home: OffstageLayoutDemo(),
    );
  }
}

class OffstageLayoutDemo extends StatefulWidget {
  final String title;

  OffstageLayoutDemo({Key key, this.title}) : super(key: key) {}

  @override
  State<StatefulWidget> createState() => _OffstageLayoutDemo();
}

class _OffstageLayoutDemo extends State<OffstageLayoutDemo> {
  //状态控制是否显示文本组件
  bool offstage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('控制控件是否显示隐藏Offstage'),
      ),
      body: Center(
        child: Offstage(
          offstage: offstage,
          child: Image.asset('images/girl2.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //设置是否显示文本组件
          setState(() {
            offstage = !offstage;
          });
        },
        tooltip: '显示隐藏',
        child: Icon(Icons.flip),
      ),
    );
  }
}

///Warp按宽高自动换行布局
///
class WarpLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warp按宽高自动换行布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Warp按宽自动换行布局'),
        ),
        //自动换行布局容器

        body: Wrap(
          //chip之间的间距大小
          spacing: 8,
          //行之间的间距大小
          runSpacing: 4,
          //
          children: <Widget>[
            Chip(
              //添加原型头像
              avatar: CircleAvatar(
                backgroundColor: Colors.green.shade50,
                child: Text(
                  '孤独求败',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              label: Text('开天很够 '),
            ),
            Chip(
              //添加原型头像
              avatar: CircleAvatar(
                backgroundColor: Colors.green.shade50,
                child: Text(
                  '孤独求败',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              label: Text('开天很够 '),
            ),
            Chip(
              //添加原型头像
              avatar: CircleAvatar(
                backgroundColor: Colors.green.shade50,
                child: Text(
                  '孤独求败',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              label: Text('开天很够 '),
            ),
            Chip(
              //添加原型头像
              avatar: CircleAvatar(
                backgroundColor: Colors.green.shade50,
                child: Text(
                  '孤独求败',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              label: Text('开天很够 '),
            ),
            Chip(
              //添加原型头像
              avatar: CircleAvatar(
                backgroundColor: Colors.green.shade50,
                child: Text(
                  '孤独求败',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              label: Text('开天很够 '),
            ),
          ],
        ),
      ),
    );
  }
}
