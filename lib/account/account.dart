import 'package:flutter/material.dart';
import 'package:imooc/account/accountmenu.dart';
import 'package:imooc/mocks/mocks.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var scaffold=Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: NetworkImage(teachers[2].avatar),
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('qq_水墨丹心...',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        Icon(Icons.person,color:Colors.blue)
                      ],
                      
                    ),
                    SizedBox(height: 3,),
                    Row(
                      children: <Widget>[
                        Text('学习时长 601小时',style: TextStyle(fontSize: 10),),
                        SizedBox(width: 10,),
                        Text('经验14107',style: TextStyle(fontSize: 10),),
                      ],
                    )
                    
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('关注 14'),
                Text('|'),
                Text('粉丝 0'),
                Text('|'),
                Text('积分 3')
              ],
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage('https://class.imooc.com/static/module/index/img/banner-bg.png'),
                fit: BoxFit.fill
              ),
              color: Colors.blue
            ),
          ),
          AccountMenu(name: '分享赚学费',nop: '查看收益与提现',),
          Divider(),
          AccountMenu(name: '购物车',nop: '',),
          Divider(),
          AccountMenu(name: '我的订单',nop: '',),
          Divider(),
          AccountMenu(name: '我的余额',nop: '0.00元',),
          Divider(),
          AccountMenu(name: '电子兑换码',nop: '',),
          Divider(),
          AccountMenu(name: '优惠券',nop: '',),
          Divider(),
          AccountMenu(name: '意见反馈',nop: '',),
          Divider(),
          AccountMenu(name: '常见问题',nop: '',),
          Divider(),
          AccountMenu(name: '设置',nop: '',),
          Divider(),

        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.wb_sunny,color: Colors.grey[700],),
              SizedBox(
                width: 12,
              ),
              Icon(Icons.scanner,color: Colors.grey[700],),
              SizedBox(
                width: 12,
              ),
              Icon(Icons.mail_outline,color: Colors.grey[700],),
              SizedBox(
                width: 12,
              ),
            ],
          )
        ],
      ),
    );

return scaffold;
  }
}
