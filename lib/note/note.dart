import 'package:flutter/material.dart';
import 'package:imooc/note/nodeitem.dart';
import 'package:imooc/note/tag.dart';
import 'package:imooc/proxy/node_proxy.dart';

class NodePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NodePageState();
  }
}

class NodePageState extends State<NodePage> {
  
  List<dynamic> nodeInfos =[];
  
  @override
  void initState(){
    super.initState();
  }

  Future<void> fetchData() async{
    var nodes =await NodeProxy.getNodes();
    setState(() {
      this.nodeInfos =nodes;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      floatingActionButton: new Builder(builder: (BuildContext context) {
        return new FloatingActionButton(
          child: const Icon(Icons.edit),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          heroTag: null,
          elevation: 0.0,
          highlightElevation: 14.0,
          onPressed: () {
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text("FAB is Clicked"),
            ));
          },
          mini: true,
          shape: new CircleBorder(),
          isExtended: false,
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigration',
            onPressed: () => debugPrint(""),
          ),
        ],
        title: TabBar(
          isScrollable: true,
          labelColor: Colors.blue,
          labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.black87,
          unselectedLabelStyle: TextStyle(fontSize: 13),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.0,
          indicatorColor: Colors.blue,
          tabs: <Widget>[
            Tab(
              text: '推荐',
            ),
            Tab(
              text: '关注',
            )
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Container(
            child: ListView(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: 
                     <Widget>[
                      NodeItem(
                        title: '50行代码学会Koa2中间件原理',
                        tag: 'Node.js',
                        views: 2222,
                        src:
                            'https://img.mukewang.com/5c793cb20001a53005160310-200-200.jpg',
                      ),
                      Divider(),
                      NodeItem(
                        title: 'Python进阶量化交易场外篇5——标记A股市场涨跌周期',
                        tag: 'Node.js',
                        views: 3,
                        src:
                            'https://img.mukewang.com/5c7e63a900018dab01950191-200-200.jpg',
                      ),
                      Divider(),
                      NodeItem(
                        title: '教你用 Python 进阶量化交易',
                        tag: 'Node.js',
                        views: 35,
                        src:
                            'https://www.imooc.com/static/img/article/cover/pic12.jpg',
                      ),
                      Divider(),
                      NodeItem(
                        title: 'Redis 事务在 SpringBoot 中的应用',
                        tag: 'Node.js',
                        views: 20,
                        src:
                            'https://img2.mukewang.com/5bf39fbf00014af202720272-200-200.jpg',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text('-- 更多分类 --'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Tag(
                            name: '资讯',
                          ),
                          Tag(
                            name: '最新文章',
                          ),
                          Tag(
                            name: '区块链',
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Tag(
                            name: '人工智能',
                          ),
                          Tag(
                            name: '云计算/大数据',
                          ),
                          Tag(
                            name: '前端开发',
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: <Widget>[
                      NodeItem(
                        title: 'Redux开发实用教程',
                        tag: 'Node.js',
                        views: 3333,
                        src:
                            'https://img.mukewang.com/5bf3a1040001d16f02720272-200-200.jpg',
                      ),
                      Divider(),
                      NodeItem(
                        title: 'Java 208 道面试题：Java 基础模块答案',
                        tag: 'Node.js',
                        views: 2772,
                        src:
                            'https://img4.mukewang.com/5c7cf5a20001606308000600-200-200.jpg',
                      ),
                      Divider(),
                      NodeItem(
                        title: 'Spring Boot企业级微服务环境搭建',
                        tag: 'Node.js',
                        views: 262,
                        src:
                            'https://www.imooc.com/static/img/article/cover/pic17.jpg',
                      ),
                      Divider(),
                      NodeItem(
                        title: 'Java并发之synchronized深入',
                        tag: 'Node.js',
                        views: 3444,
                        src:
                            'https://img4.mukewang.com/5bf3a0780001d77502720272-200-200.jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text('2'),
          )
        ],
      ),
    );
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: scaffold,
    );
  }
}
