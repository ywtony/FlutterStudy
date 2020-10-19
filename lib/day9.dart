import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///容器布局
class ContinerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器布局示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器布局示例'),
        ),
        body: Container(
          //添加装饰效果
          decoration: BoxDecoration(
              //背景颜色
              color: Colors.grey),
          //子元素指定一个垂直水平嵌套布局
          child: Column(
            children: <Widget>[
              //水平布局
              Row(
                children: <Widget>[
                  //使用Expanded防止内容溢出
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      //添加边框样式
                      decoration: BoxDecoration(
                          //上下左右边框设置为10
                          border: Border.all(color: Colors.blueGrey, width: 10),
                          //上下左右边框弧度为8
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      //上下左右增加边距
                      margin: EdgeInsets.all(4.0),
                      //添加图片
                      child: Image.asset('images/girl1.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey, width: 10),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: EdgeInsets.all(4),
                      child: Image.asset('images/girl2.jpg'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: Colors.blueGrey, width: 10)),
                      margin: EdgeInsets.all(4),
                      child: Image.asset('images/girl3.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey, width: 10),
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.all(4),
                      child: Image.asset('images/girl2.jpg'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

///居中布局

class CenterLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '居中布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('居中布局测试'),
        ),
        body: Center(
            child: SizedBox(
                width: 200,
                height: 200,
                child: Image.network(
                    'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3724743039,3668514198&fm=26&gp=0.jpg'))),
      ),
    );
  }
}

///padding布局
///
class PaddingLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padding布局',
      home: Scaffold(
        appBar: AppBar(title: Text('Padding布局')),
        body: Center(
          //添加容器外框
          child: Container(
            width: 300,
            height: 300,
            //容器内边距上下左右填充
            padding: EdgeInsets.all(60),
            //添加边框
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.green, width: 8)),
            //添加容器内框
            child: Container(
              width: 200,
              height: 200,
              //添加边框
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.blue, width: 9)),
              child: FlutterLogo(),
            ),
          ),
        ),
      ),
    );
  }
}

///Align对齐布局
///
class AlignLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Align对齐示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Align对齐布局'),
        ),
        body: Stack(
          children: <Widget>[
            //左上角
            Align(
              //对齐属性，确定位置
              alignment: FractionalOffset(0, 0),
              child: SizedBox(
                width: 150,
                height: 150,
                //添加图片
                child: Image.asset('images/girl1.jpg'),
              ),
            ),
            //右上角
            Align(
              //对齐属性，确定位置
              alignment: FractionalOffset(1, 0),
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('images/girl2.jpg'),
              ),
            ),
            //水平垂直方向居中
            Align(
              alignment: FractionalOffset.center,
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('images/girl3.jpg'),
              ),
            ),
            //左下角
            Align(
              alignment: FractionalOffset.bottomLeft,
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('images/girl1.jpg'),
              ),
            ),
            //右下角
            Align(
              alignment: FractionalOffset.bottomRight,
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('images/girl2.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///Row水平布局
///
class RowLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row水平布局示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row水平布局示例'),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                '左侧文本',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '中间文本',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '右侧文本',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

///Column垂直布局
///
class ColumnLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column垂直布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column垂直布局'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset('images/girl1.jpg'),
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset('images/girl2.jpg'),
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset('images/girl3.jpg'),
            )
          ],
        ),
      ),
    );
  }
}

///FittedBox 缩放布局
///
class FittedBoxLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FittedBox缩放布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FittedBox缩放布局'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: FittedBox(
                //按宽高比进行填充,内容不会超过容器范围
                fit: BoxFit.contain,
                alignment: Alignment.center,
                child: Image.asset('images/girl3.jpg'),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: FittedBox(
                //不按宽高比填充，内容不会超过屏幕
                fit: BoxFit.fill,
                alignment: Alignment.center,
                child: Image.asset('images/girl3.jpg'),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: FittedBox(
                //按原图尺寸填充整个布局，内容可能会超出
                fit: BoxFit.cover,
                alignment: Alignment.center,
                child: Image.asset('images/girl3.jpg'),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: FittedBox(
                //按照宽度填充
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                child: Image.asset('images/girl3.jpg'),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: FittedBox(
                //按高度进行填充
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                child: Image.asset('images/girl3.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///Stack/Alignment
///
class StackAlignmentLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StackAlignment布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack/Alignament示例'),
        ),
        //Stack中的组件都需要定位才行
        body: Stack(
          //子组件左上角对齐
          alignment: Alignment.topLeft,
          children: <Widget>[
            //地不添加一个头像
            CircleAvatar(
              backgroundImage: AssetImage('images/girl8.jpg'),
              radius: 100,
            ),
            //上面加一个容器，容器里再放一个文本
            Container(
              decoration: BoxDecoration(color: Colors.black38),
              child: Text(
                '我是二次元小姐姐',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///Stack/Positioned 用来定位
///
class StackPositionedLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack/Positioned示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack/Positioned示例'),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              //添加图片
              Image.asset('images/girl9.jpg'),
              //设置定位布局
              Positioned(
                bottom: 300,
                right: 50,
                child: Text(
                  'Hello 小姐姐',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif',
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///IndexedStack 作用是显示第Index布局，改造上一个例子
///
class IndexedStackLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '显示第Index布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('显示第Index布局'),
        ),
        body: Center(
          child: IndexedStack(
            index: 1,
            alignment: const FractionalOffset(0.2, 0.2),
            children: <Widget>[
              //索引0
              CircleAvatar(
                backgroundImage: AssetImage('images/girl6.jpg'),
                radius: 100,
              ),
              //索引1
              Container(
                decoration: BoxDecoration(color: Colors.black38),
                child: Text(
                  '我是小姐姐，但是隐藏了',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///OverflowBox溢出父容器显示
///
class OverflowBoxLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '溢出父容器显示布局示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('溢出父容器布局示例'),
        ),
        body: Container(
          color: Colors.green,
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(50),
          child: OverflowBox(
            alignment: Alignment.topLeft,
            maxWidth: 400,
            maxHeight: 400,
            child: Container(
              color: Colors.blueGrey,
              width: 300,
              height: 300,
            ),
          ),
        ),
      ),
    );
  }
}
