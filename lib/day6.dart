import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///表单组件
///使用一个模拟登陆的小界面来完善案例
///此处使用一个有状态的组件
class FormApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormStateDemo();
}

class FormStateDemo extends State<FormApp> {
  //全局key用来获取form表单组件
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  //用户名
  String userName;

  //密码
  String password;

  void login() {
    //读取当前form状态
    var loginForm = loginKey.currentState;
    //验证form表单
    if (loginForm.validate()) {
      loginForm.save();
      print("userName:" + userName + "|password:" + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app表单示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form表单示例"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              //添加内边距
              padding: const EdgeInsets.all(16),
              //添加form表单
              child: Form(
                  key: loginKey,
                  child: Column(
                    children: <Widget>[
                      //文本输入表单组件
                      TextFormField(
                        //装饰器
                        decoration: InputDecoration(
                          //提示文本
                            labelText: '请输入用户名'),
                        //接收输入值
                        onSaved: (value) {
                          userName = value;
                        },
                        onFieldSubmitted: (value) {},
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: '请输入密码'),
                        onSaved: (value) {
                          password = value;
                        },
                        onFieldSubmitted: (value) {},
                        obscureText: true,
                        //验证表单方法
                        validator: (value) {
                          return value.length < 6 ? "密码长度不够6位" : null;
                        },
                      ),
                    ],
                  )
                //限定容器大小

              ),
            ),
            //限定容器大小
            SizedBox(
              width: 340,
              height: 42,
              //添加登录按钮
              child: RaisedButton(
                onPressed: login,
                child: Text(
                  "登录",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
