import 'package:flutter/material.dart';
import 'package:imooc/home/banner.dart';
import 'package:imooc/home/lession.dart';
import 'package:imooc/home/section.dart';

class RecommandView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RecommandViewState();
  }
}

class RecommandViewState extends State<RecommandView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
          color: Colors.white,
          height: 120.0,
          child: HomeBanner(),
        ),
        Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 15,
              ),
              Text(
                '三月涨薪季，优惠折上折！',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          height: 20,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 10.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Section('实战推荐'),
              LessionItem(
                title: '专为程序员设计的线性代数课程',
                src:
                    'https://img1.mukewang.com/szimg/5c18d2d8000141c506000338.jpg',
                price: 299,
                clip: '限时优惠',
              ),
              LessionItem(
                title: '从基础到实战 手把手带你掌握新版',
                src:
                    'https://img1.mukewang.com/szimg/5c6bdb3e08e4674a06000338.jpg',
                price: 299,
                clip: '满减',
              ),
              LessionItem(
                title: 'React 源码深度解析',
                src:
                    'https://img3.mukewang.com/szimg/5c32c05b085f95bf06000338.jpg',
                price: 299,
                clip: '满减',
              ),
              LessionItem(
                title: 'Google资深工程师深度讲解Go语言',
                src:
                    'https://img3.mukewang.com/szimg/5a7127370001a8fa05400300.jpg',
                price: 299,
                clip: '限时优惠',
              ),
              LessionItem(
                title: '剑指Java面试Offer直通车',
                src:
                    'https://img4.mukewang.com/szimg/5b5835a60001907e05400300.jpg',
                price: 299,
                clip: '满减',
              ),
              SizedBox(
                height: 40,
                child: Center(
                  child: Text(
                    '查看更多',
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
