import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imooc/home/recommend.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _tabIndex = 1;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
          height: 36.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: Colors.transparent.withOpacity(0.1)),
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton.icon(
                  onPressed: () => {},
                  icon: Icon(Icons.search, color: Colors.grey[700], size: 20.0),
                  label: Text("算法与数据结构",
                      style: TextStyle(color: Colors.grey[700])),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.shopping_cart),
          tooltip: 'Navigration',
          onPressed: () => debugPrint(""),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.file_download),
            tooltip: 'Navigration',
            onPressed: () => debugPrint(""),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          labelColor: Colors.red,
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.black87,
          unselectedLabelStyle: TextStyle(fontSize: 14),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.0,
          indicatorColor: Colors.red,
          tabs: <Widget>[
            Tab(text: '推荐'),
            Tab(text: '免费课'),
            Tab(text: '实战课'),
            Tab(text: '就业班'),
            Tab(text: '专栏')
          ],
        ),


      ),
      body: TabBarView(
        children: <Widget>[
          RecommandView(),
          Icon(
            Icons.local_bar,
            size: 128,
            color: Colors.black12,
          ),
          Icon(
            Icons.movie,
            size: 128,
            color: Colors.black12,
          ),
          Icon(
            Icons.music_note,
            size: 128,
            color: Colors.black12,
          ),
          Icon(
            Icons.code,
            size: 128,
            color: Colors.black12,
          )
        ],
      ),

    );
    return DefaultTabController(
      length: 5,
      child: scaffold,

    );
  }
}
