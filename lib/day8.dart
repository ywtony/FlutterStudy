import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///FloatingActionButton
///
class FloatingActionButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloatingActionButton按钮示例',
      home: FloatingActionButtonDemo(),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton示例'),
      ),
      body: Center(
        child: Text(
          'FloatingActionButton示例',
          style: TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          child: Icon(Icons.add),
          //提示信息
          tooltip: '请点击FloatingButton',
          //前景颜色
          foregroundColor: Colors.white,
          //背景颜色
          backgroundColor: Colors.blue,
          //未点击阴影值
          elevation: 7,
          //点击阴影值
          highlightElevation: 14,
          onPressed: () {
            //点击回调事件，弹出一句提示语
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('你点击了FloatingActionButton'),
            ));
          },
          mini: false,
          //原型边
          shape: CircleBorder(),
          isExtended: false,
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

///FlatButton示例
///
class FlatButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlatButtonApp',
      home: FlatButtonDemo(),
    );
  }
}

class FlatButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton示例'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {},
          child: Text(
            'FlatButton',
            style: TextStyle(fontSize: 29),
          ),
        ),
      ),
    );
  }
}

///PopupMenuButton
///
class PopupMenuButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenuButton示例',
      home: PopupMenuButtonDemo(),
    );
  }
}

//菜单数据
enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class PopupMenuButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton示例'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {},
          child: PopupMenuButton<ConferenceItem>(
            onSelected: (ConferenceItem result) {},
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<ConferenceItem>>[
              const PopupMenuItem<ConferenceItem>(
                value: ConferenceItem.AddMember,
                child: Text('添加成员'),
              ),
              const PopupMenuItem<ConferenceItem>(
                value: ConferenceItem.LockConference,
                child: Text('锁定会议'),
              ),
              const PopupMenuItem<ConferenceItem>(
                value: ConferenceItem.ModifyLayout,
                child: Text('修改布局'),
              ),
              const PopupMenuItem<ConferenceItem>(
                value: ConferenceItem.TurnoffAll,
                child: Text('挂断所有'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///SimpleDialog
///
class SimpleDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleDialog示例',
      home: SimpleDialogDemo(),
    );
  }
}

class SimpleDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog示例'),
      ),
      body: Center(
        child: SimpleDialog(
          title: const Text('对话框标题'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {},
              child: const Text('第一行信息'),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: const Text('第二行信息'),
            )
          ],
        ),
      ),
    );
  }
}

///AlertDialog示例
///
class AlertDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog示例',
      home: AlertDialogDemo(),
    );
  }
}

class AlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog示例'),
      ),
      body: Center(
        //添加对话框
        child: AlertDialog(
          //对话框标题
          title: Text('提示'),
          //对话框内容部分
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[Text('是否要删除'), Text('一旦删除数据不可恢复')],
            ),
          ),
          //对话框操作按钮
          actions: <Widget>[
            FlatButton(onPressed: () {}, child: Text('确定')),
            FlatButton(
              onPressed: () {},
              child: Text('取消'),
            )
          ],
        ),
      ),
    );
  }
}

///snackbar轻量级提示组件
///
class SnackBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '轻量级提示组件',
      home: SnackBarDemo(),
    );
  }
}

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轻量级提示组件'),
      ),
      body: Center(
        child: Text(
          'SnackBar示例',
          style: TextStyle(fontSize: 29),
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            //点击回调事件，弹出对话框
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('显示SnackBar'),
            ));
          },
          shape: CircleBorder(),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

//其他组件
///TextField
///
class TextFieldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //添加文本编辑器控制，监听文本输入内容变化
    final TextEditingController controller = TextEditingController();
    controller.addListener(() {
      print("您输入的内容为：${controller.text}");
    });
    return MaterialApp(
      title: 'TextField示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField示例'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              //绑定controller
              controller: controller,
              //最大长度，设置此属性会让TextField右下角有一个输入量的统计字符串

              maxLength: 30,
              //最大行数
              maxLines: 1,
              //是否自动更正
              autocorrect: true,
              //是否自动对焦
              autofocus: true,
              //是否是密码
              obscureText: false,
              //文本对齐方式
              textAlign: TextAlign.center,
              //输入文本样式
              style: TextStyle(fontSize: 36, color: Colors.green
                  //
                  ),
              //文本内容改变时回调
              onChanged: (text) {
                print('文本内容改变时回调$text');
              },
              //内容提交时回调
              onSubmitted: (text) {
                print('内容提交时回调$text');
              },
              //是否禁用
              enabled: true,
              //添加装饰效果
              decoration: InputDecoration(
                  //添加灰色填充
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  helperText: '用户名',
                  //左侧图标
                  prefixIcon: Icon(Icons.person),
                  //左侧文本提示
                  suffixText: '用户名'),
            ),
          ),
        ),
      ),
    );
  }
}

///Card组件
///
///
class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card示例'),
        ),
        body: SizedBox(
          height: 250,
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    '浦东新区荣耀大道',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  subtitle: Text(
                    '禁止信息科技',
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.lightBlue,
                  ),
                ),
                //分割线
                Divider(),
                ListTile(
                  title: Text(
                    '松江区德悦路',
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  subtitle: Text('登云路'),
                  leading: Icon(
                    Icons.school,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
