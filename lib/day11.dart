import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///列表及表格布局
///
///ListView布局
class ListViewLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView布局示例'),
        ),
        body: Container(
          //列表视图组件
          child: ListView(
            children: <Widget>[
              //列表项
              ListTile(
                title: Text('这是一个小姐姐'),
                subtitle: Text('真的很漂亮'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl1.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('这是一个二次元小姐姐'),
                subtitle: Text('二次元女神'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl2.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('这是一个二次元小姐姐'),
                subtitle: Text('二次元女神'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl3.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('这是一个二次元小姐姐'),
                subtitle: Text('二次元女神'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl4.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('这是一个二次元小姐姐'),
                subtitle: Text('二次元女神'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl5.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('这是一个二次元小姐姐'),
                subtitle: Text('二次元女神'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl6.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('这是一个二次元小姐姐'),
                subtitle: Text('二次元女神'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl7.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('这是一个二次元小姐姐'),
                subtitle: Text('二次元女神'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl8.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('这是一个二次元小姐姐'),
                subtitle: Text('二次元女神'),
                leading: Container(
                  width: 100,
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/girl9.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


///ListView长文本滚动效果
///
class ListViewLageTextLayoutApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView长文本滚动效果',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView长文本滚动效果'),

        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Text('这是一个介绍小姐姐的文本'
              ,style: TextStyle(
                  fontSize: 36
                ),),
            ),
            Container(
              child: Text('这是一个介绍小姐姐的文本,下面是正文内容'
                ,style: TextStyle(
                    fontSize: 16
                ),),
            ),
            Container(
              child: Text('''朕幼清以廉洁兮，身服义而未沫。
              主此盛德兮，牵于俗而芜秽。
              上无所考此盛德兮，长离殃而愁苦。
              帝告巫阳曰：“有人在下，我欲辅之。
              魂魄离散，汝筮予之。”
              巫阳对曰：“掌梦！
              上帝其难从；若必筮予之，
              恐后之谢，不能复用。”
              巫阳焉乃下招曰：
              魂兮归来！去君之恒干，
              何为四方些？舍君之乐处，
              而离彼不祥些！
              魂兮归来！东方不可以讬些。
              长人千仞，惟魂是索些。
              十日代出，流金铄石些。
              彼皆习之，魂往必释些。
              归来兮！不可以讬些。
              魂兮归来！南方不可以止些。
              雕题黑齿，得人肉以祀，以其骨为醢些。
              蝮蛇蓁蓁，封狐千里些。
              雄虺九首，往来倏忽，吞人以益其心些。
              归来兮！不可久淫些。
              魂兮归来！西方之害，流沙千里些。
              旋入雷渊，爢散而不可止些。
              幸而得脱，其外旷宇些。
              赤蚁若象，玄蜂若壶些。
              五谷不生，丛菅是食些。
              其土烂人，求水无所得些。
              彷徉无所倚，广大无所极些。
              归来兮！恐自遗贼些。
              魂兮归来！北方不可以止些。
              增冰峨峨，飞雪千里些。
              归来兮！不可以久些。
              魂兮归来！君无上天些。
              虎豹九关，啄害下人些。
              一夫九首，拔木九千些。
              豺狼从目，往来侁侁些。
              悬人以嬉，投之深渊些。
              致命于帝，然后得瞑些。
              归来！往恐危身些。
              魂兮归来！君无下此幽都些。
              土伯九约，其角觺觺些。
              敦脄血拇，逐人伂駓駓些。
              参目虎首，其身若牛些。
              此皆甘人，归来！恐自遗灾些。
              魂兮归来！入修门些。
              工祝招君，背行先些。
              秦篝齐缕，郑绵络些。
              招具该备，永啸呼些。
              魂兮归来！反故居些。
              天地四方，多贼奸些。
              像设君室，静闲安些。
              高堂邃宇，槛层轩些。
              层台累榭，临高山些。
              网户朱缀，刻方连些。
              冬有穾厦，夏室寒些。
              川谷径复，流潺湲些。
              光风转蕙，氾崇兰些。
              经堂入奥，朱尘筵些。
              砥室翠翘，挂曲琼些。
              翡翠珠被，烂齐光些。
              蒻阿拂壁，罗帱张些。
              纂组绮缟，结琦璜些。
              室中之观，多珍怪些。
              兰膏明烛，华容备些。
              二八侍宿，射递代些。
              九侯淑女，多迅众些。
              盛鬋不同制，实满宫些。
              容态好比，顺弥代些。
              弱颜固植，謇其有意些。
              姱容修态，絚洞房些。
              蛾眉曼睩，目腾光些。
              靡颜腻理，遗视矊些。
              离榭修幕，侍君之闲些。
              悲帷翠帐，饰高堂些。
              红壁沙版，玄玉梁些。
              仰观刻桷，画龙蛇些。
              坐堂伏槛，临曲池些。
              芙蓉始发，杂芰荷些。
              紫茎屏风，文缘波些。
              文异豹饰，侍陂陁些。
              轩辌既低，步骑罗些。
              兰薄户树，琼木篱些。
              魂兮归来！何远为些？
              室家遂宗，食多方些。
              稻粢穱麦，挐黄梁些。
              大苦醎酸，辛甘行些。
              肥牛之腱，臑若芳些。
              和酸若苦，陈吴羹些。
              胹鳖炮羔，有柘浆些。
              鹄酸臇凫，煎鸿鸧些。
              露鸡臛蠵，厉而不爽些。
              粔籹蜜饵，有餦餭些。
              瑶浆蜜勺，实羽觞些。
              挫糟冻饮，酎清凉些。
              华酌既陈，有琼浆些。
              归来反故室，敬而无妨些。
              肴羞未通，女乐罗些。
              敶钟按鼓，造新歌些。
              涉江采菱，发扬荷些。
              美人既醉，朱颜酡些。
              嬉光眇视，目曾波些。
              被文服纤，丽而不奇些。
              长发曼鬋，艳陆离些。
              二八齐容，起郑舞些。
              衽若交竿，抚案下些。
              竽瑟狂会，搷鸣鼓些。
              宫庭震惊，发激楚些。
              吴歈蔡讴，奏大吕些。
              士女杂坐，乱而不分些。
              放敶组缨，班其相纷些。
              郑卫妖玩，来杂陈些。
              激楚之结，独秀先些。
              菎蔽象棋，有六簙些。
              分曹并进，遒相迫些。
              成枭而牟，呼五白些。
              晋制犀比，费白日些。
              铿钟摇簴，揳梓瑟些。
              娱酒不废，沈日夜些。
              兰膏明烛，华灯错些。
              结撰至思，兰芳假些。
              人有所极，同心赋些。
              酎饮尽欢，乐先故些。
              魂兮归来！反故居些。
              乱曰：
              献岁发春兮，汨吾南征。
              菉蘋齐叶兮，白芷生。
              路贯庐江兮，左长薄。
              倚沼畦瀛兮，遥望博。
              青骊结驷兮，齐千乘。
              悬火延起兮，玄颜烝。
              步及骤处兮，诱骋先。
              抑骛若通兮，引车右还。
              与王趋梦兮，课后先。
              君王亲发兮，惮青兕。
              朱明承夜兮，时不可以淹。
              皋兰被径兮，斯路渐。
              湛湛江水兮，上有枫。
              目极千里兮，伤春心。
              魂兮归来，哀江南！'''
                ,style: TextStyle(
                    fontSize: 16
                ),),
            )
          ],
        ),
      ),
    );
  }

}
