import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///动画相关
///演示字体放大动画
class FontAnimation extends StatefulWidget {
  @override
  _FontAnimation createState() => _FontAnimation();
}

class _FontAnimation extends State<FontAnimation>
    with SingleTickerProviderStateMixin {
  //补间动画
  Animation<double> tween;

  //动画控制对象
  AnimationController controller;

  //初始状态
  @override
  void initState() {
    super.initState();
    /**
     * 创建动画控制类对象
     * duration 动画执行事件，单位是毫秒
     * vsync 防止动画离屏后继续消耗资源
     */
    controller = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    //创建补间动画对象
    tween = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        //添加监听器
        setState(() {
          //打印补间插值
          print(tween.value);
        });
      });
    //执行动画
    controller.forward();
  }

  //开始执行都规划
  startAnimation() {
    setState(() {
      //从起始值执行都动画
      controller.forward(from: 0.0);
    });
  }

  //销毁动画
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '文字放大动画',
      home: Scaffold(
        appBar: AppBar(
          title: Text('文本动画'),
        ),
        //添加手势组件
        body: GestureDetector(
          onTap: () {
            //点击文本重新执行动画
            startAnimation();
          },
          child: Center(
            child: Text(
              '字体放大',
              style: TextStyle(fontSize: 60 * controller.value),
            ),
          ),
        ),
      ),
    );
  }
}
