import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///App结构和导航组件

class NavicationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //设置首页
      home: MyHomePage(),
      title: "App结构和导航组件",
    );
  }
}

///
/// 这是一个可变的widget
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialApp示例标题"),
      ),
      body: Center(
        child: Text(
          '主页',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

///路由
class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "路由跳转示例",
      theme: ThemeData(primarySwatch: Colors.red),
      home: RouteHomePage(),
      //设置路由
      routes: {
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage()
      },
      initialRoute: '/first',
    );
  }
}

class RouteHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RouteHomePageState();
  }
}

class _RouteHomePageState extends State<RouteHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由示例"),
      ),
      body: Center(
        child: Text(
          '主页',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

///第一个路由页面
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //路由跳转到第二个页面
            Navigator.pushNamed(context, '/second');
          },
          child: Text(
            '这是第一页',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/first');
          },
          child: Text(
            '这是第二个页面',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

///Scaffold 脚手架

class ScaffoldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scaffold组件",
      home: ScaffoldDemo(),
    );
  }
}

class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold 脚手架组件示例"),
      ),
      body: Center(
        child: Text("Scaffold"),
      ),
      //底部导航栏
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
      ),
      //添加FAB按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "添加",
        child: Icon(Icons.add),
      ),
      //fab按钮居中显示
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

///Appbar应用按钮组件
class AppBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar示例",
      home: AppBarDemo(),
    );
  }
}

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //左侧图标
        leading: Icon(Icons.home),
        //标题
        title: Text("Appbar应用按钮示例"),
        //操作按钮集合
        actions: <Widget>[
          //图标按钮
          IconButton(icon: Icon(Icons.search), onPressed: () {}, tooltip: '搜索'),
          IconButton(icon: Icon(Icons.add), onPressed: () {}, tooltip: '添加')
        ],
      ),
    );
  }
}

///底部导航条组件
///
class BottomNavigationBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "底部导航示例",
      home: BottomNavigatonBarDemo(),
    );
  }
}

class BottomNavigatonBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationBarDemo();
}

class _BottomNavigationBarDemo extends State<BottomNavigatonBarDemo> {
  //当前选中项的索引
  int _selectedIndex = 1;

  //导航按钮选中对应数据
  final _widgetOptions = [
    Text('index0:信息'),
    Text('index1:通讯录'),
    Text('index2:发现')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //顶部应用按钮
      appBar: AppBar(
        title: Text('BottomNavigationBar示例'),
      ),
      //中间内容显示区域
      body: Center(
        //居中显示一个文本
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //底部导航按钮集
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          //底部导航按钮，包含图标及文本
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "信息"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: '通讯录'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "发现")
        ],
        //当前选中项的索引
        currentIndex: _selectedIndex,
        //选项中项的颜色
        fixedColor: Colors.deepPurple,
        //选择按下处理
        onTap: void_onItemTapped,
      ),
    );
  }

  //选择按下处理，设置当前索引为index
  // ignore: non_constant_identifier_names
  void_onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

///水平选型卡及视图组件
///DefaultTabController
class DefaultTabControllerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DefaultTabController组件",
      home: DefaultTabController(
        //选项卡长度
        length: 2,
        child: DefaultTabControllerDemo(),
      ),
    );
  }
}

class DefaultTabControllerDemo extends StatelessWidget {
  //选项卡数据
  final List<Tab> tabs = <Tab>[
    Tab(
      text: '选项卡1',
    ),
    Tab(
      text: '选项卡2',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //添加页面标题
        title: Text('DefaultTabControllerDemo'),
        //添加选项卡按钮,注意此bottom表视再Appbar底部，在整个页面上来看还处于顶部区域
        bottom: TabBar(
          tabs: tabs,
        ),
      ),
      //添加选项卡视图
      body: TabBarView(
        //使用map迭代显示中间空间
        children: tabs.map((Tab tab) {
          return Center(child: Text(tab.text));
        }).toList(),
      ),
    );
  }
}

///TabBar水平选项卡完整例子

class TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "水平选项卡",
      //添加DefaultTabController关联TabBar以及TabView
      home: DefaultTabController(
        //传入选项卡数量
        length: items.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar选项卡示例'),
            //选项卡按钮
            bottom: TabBar(
              //设置为可以滚动
              isScrollable: true,
              //迭代添加选项卡按钮子项
              tabs: items.map((ItemView item) {
                //图标及文本组成选项卡按钮
                return Tab(
                  text: item.title,
                  icon: Icon(item.icon),
                );
              }).toList(),
            ),
          ),
          //添加选项卡视图
          body: TabBarView(
            //迭代显示选型卡视图
            children: items.map((ItemView item) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: SelectView(item: item),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

//视图项数据
class ItemView {
  /*
   * 构造方法传入标题和图标
   */
  const ItemView({this.title, this.icon});

  /*
   * 标题
   */
  final String title;

  /*
   * 图标
   */
  final IconData icon;
}

///选项卡类目
const List<ItemView> items = const <ItemView>[
  const ItemView(title: '地铁', icon: Icons.directions_railway),
  const ItemView(title: '自驾', icon: Icons.directions_car),
  const ItemView(title: '自行车', icon: Icons.directions_bike),
  const ItemView(title: '轮船', icon: Icons.directions_boat),
  const ItemView(title: '公交车', icon: Icons.directions_bus),
  const ItemView(title: '火车', icon: Icons.directions_railway),
  const ItemView(title: '步行', icon: Icons.directions_walk),
];

//被选中的视图
class SelectView extends StatelessWidget {
  const SelectView({Key key, this.item}) : super(key: key);

  //视图数据
  final ItemView item;

  @override
  Widget build(BuildContext context) {
    //获取文本主题样式
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    //添加卡片组件，展示有质感
    return Card(
      //卡片颜色
      color: Colors.white,
      child: Column(
        //垂直方向最小化处理
        mainAxisSize: MainAxisSize.min,
        //水平方向居中对齐
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            item.icon,
            size: 128,
            color: textStyle.color,
          ),
          Text(
            item.title,
            style: textStyle,
          )
        ],
      ),
    );
  }
}

///抽屉菜单
///
class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer抽屉组件示例',
      home: DrawerDemo(),
    );
  }
}

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('抽屉组件示例'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //设置用户头像，用户名邮箱
            UserAccountsDrawerHeader(
              accountName: Text('杨洛峋'),
              accountEmail: Text('openglesgames@163.com'),
              //设置当前用户头像
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/1.jpg'),
              ),
              onDetailsPressed: () {},
              otherAccountsPictures: <Widget>[
                Container(
                  child: Image.asset('images/2.jpg'),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                //导航栏菜单
                child: Icon(Icons.color_lens),
              ),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.photo),
              ),
              title: Text('相册'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.wifi),
              ),
              title: Text('免流量特权'),
            )
          ],
        ),
      ),
    );
  }
}
