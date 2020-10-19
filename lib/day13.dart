import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///综合布局示例
///
class DetailPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //风景区地址部分
    Widget addAddressContainer = Container(
      //定义页面四周的间隔
      padding: const EdgeInsets.all(32),
      //水平布局
      child: Row(
        children: <Widget>[
          Expanded(
            //垂直布局
            child: Column(
              //水平方向左侧对齐
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '二次元介绍',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '这个小姐姐真不赖呢',
                  style: TextStyle(color: Colors.green[500]),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('66')
        ],
      ),
    );

    //构建按钮组件中单个按钮，参数为图标及文本
    Column buildButtomColumn(IconData icon, String label) {
      return Column(
        //垂直方向大小最小化
        mainAxisSize: MainAxisSize.min,
        //垂直方向剧中对齐
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //上部图标部分
          Icon(icon, color: Colors.lightGreen[600])
          //下部文本部分
          ,
          Container(
            //距离上面的间距
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightGreen[600]),
            ),
          )
        ],
      );
    }

    //按钮组部分
    Widget bottomsContainer = Container(
      //水平布局
      child: Row(
        //水平方向均匀排列每个元素
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtomColumn(Icons.call, "电话"),
          buildButtomColumn(Icons.near_me, '导航'),
          buildButtomColumn(Icons.share, '分享')
        ],
      ),
    );

    //风景区介绍文本部分
    Widget textContainer = Container(
      //设置上下左右边距
      padding: const EdgeInsets.all(32),
      child: Text(
        '''
        二次元是一个ACGN亚文化圈专门用语，来自于日语的“二次元（にじげん）”，意思是“二维”。日本早期的动画、漫画、游戏等作品都是以二维图像构成，其画面是一个平面，所以通过这些载体创造的虚拟世界被动漫爱好者称为“二次元世界”，简称“二次元”，同时，“二次元”具有“架空”、“假想”、“幻想”、“虚构”之意。在日本的动画爱好者中指动画、游戏等作品中的角色，相对地，“三次元（さんじげん）”被用来指代现实中的人物。
该词广泛在ACGN文化圈中被用作对“架空世界”或者说梦想世界的一种称呼，但ACGN并非等同于二次元。
该用法始于日本，早期的日本动画、游戏作品都是以二维图像构成的，其画面是一个平面，所以被称为是“二次元世界”，简称“二次元”，而与之相对的是“三次元”，即“我们所存在的这个次元”，也就是现实世界。二次元是指人类幻想出来的唯美世界，用各种憧憬的体现虐袭观赏者的视觉体验，本质其实还是三次元世界的人类心中模糊的对梦想生活的憧憬和对美好未来的期望。
“二次元”是一种类型的文化，而非一种风格。
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: '二次元综合案例演示',
      theme: ThemeData(
          //应用程序主题的亮度
          brightness: Brightness.light,
          //App主要部分的背景颜色
          primaryColor: Colors.green[600],
          //前景颜色（文本、按钮等）
          accentColor: Colors.orange[600]),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '二次元综合案例',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            //顶部大图
            Image.asset(
              'images/girl8.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.fill,
            ),
            addAddressContainer,
            bottomsContainer,
            textContainer
          ],
        ),
      ),
    );
  }
}
