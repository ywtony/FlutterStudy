import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/day9.dart';

///页面跳转
///
class ARouteHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '路由跳转', home: FirstRoutePage());
  }
}

class FirstRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一个页面'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRotuePage()));
          },
          child: Text('去第二个页面'),
        ),
      ),
    );
  }
}

class SecondRotuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('去第一个页面'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('去第一个页面'),
        ),
      ),
    );
  }
}

///以下演示带参数的跳转
/// 新建一个美女实体
class BeautyGirl {
  final String headUrl;
  final String name;
  final int age;
  final String occupAtion;

  BeautyGirl(this.headUrl, this.name, this.age, this.occupAtion);
}

///列表
class BeautyGirlListView extends StatelessWidget {
  //先构造9条数据
  final List<BeautyGirl> girls = List<BeautyGirl>.generate(
      10,
      (index) => BeautyGirl("images/girl${index + 1}.jpg", "美女${index + 1}",
          22 + index + 1, "正经职业"));

  // BeautyGirlListView({Key key, @required this.girls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '演示路由带参数的跳转',
        home: Scaffold(
          appBar: AppBar(
            title: Text('演示路由带参数的跳转'),
          ),
          body: ListView.builder(
            padding: EdgeInsets.only(top: 10),
            //列表长度
            itemCount: girls.length,

            //列表项构造器
            itemBuilder: (context, index) {
              //返回列表项
              return FlatButton(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BeautyGirlDetail(girl: girls[index])));
                  },
                  child: Row(
                    children: <Widget>[
                      //头像区域
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          //头像
                          child: Image.asset(
                            girls[index].headUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //简介区域
                      SizedBox(
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //姓名
                            Align(
                              child: Text("姓名：" + girls[index].name),
                            ),
                            //年龄
                            Align(
                              child: Text("年龄：" + girls[index].age.toString()),
                            ),
                            //职业
                            Align(
                              child: Text("职业：" + girls[index].occupAtion),
                            )
                          ],
                        ),
                      )
                      //介绍区域
                    ],
                  ));
            },
          ),
        ));
  }
}

//美女详情页面
class BeautyGirlDetail extends StatelessWidget {
  final BeautyGirl girl;

  BeautyGirlDetail({Key key, this.girl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return MaterialApp(
      title: girl.name,
      home: Scaffold(
        appBar: AppBar(
          title: Text(girl.name),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: width,
              height: 200,
              child: Image.asset(girl.headUrl, fit: BoxFit.cover),
            ),
            Row(
              children: <Widget>[Text('姓名：'), Text(girl.name)],
            ),
            Row(
              children: <Widget>[Text('年龄：'), Text(girl.age.toString())],
            ),
            Row(
              children: <Widget>[Text('职业：'), Text(girl.occupAtion)],
            )
          ],
        ),
      ),
    );
  }
}

///测试页面跳转后返回数据
///
class NavigatorPopRouteParams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '第一个页面',
      home: Scaffold(
        appBar: AppBar(
          title: Text('第一个页面'),
        ),
        body: Center(
          child: RouteButton(),
        ),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToSecond(context);
      },
      child: Text('跳转到第二个页面'),
    );
  }

  _navigateToSecond(BuildContext context) async {
    //压栈操作并等待页面返回
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => NextPage()));
    //读取并显示返回结果
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二个页面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: RaisedButton(
                onPressed: () {
                  //出栈带上参数，返回上一个页面
                  Navigator.pop(context, '您好啊');
                },
                child: Text('您好啊'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
