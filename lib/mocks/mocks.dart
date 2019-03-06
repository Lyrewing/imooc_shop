import 'package:flutter/material.dart';

var swipItems = [
  NetworkImage('https://img.mukewang.com/5c734d4200010e9118720632.jpg',),
  NetworkImage('https://img.mukewang.com/5b4c0686000136fc18720632.jpg',),
  NetworkImage('https://img.mukewang.com/5c6d3e4e0001946418720632.jpg',),
];

class Teacher{
  String name;
  String career;
  String avatar;
  Teacher({this.name,this.career,this.avatar});
}
var teachers=[
  Teacher(name: '风落几番',career: 'Web前端工程师',avatar: 'https://img4.mukewang.com/5bfba2490001457005750575-100-100.jpg'),
  Teacher(name: 'Jeson老师',career: '全栈工程师',avatar: 'https://img.mukewang.com/577baef700019c4501400140-100-100.jpg'),
  Teacher(name: 'carlosfu',career: '移动开发工程师',avatar: 'https://img.mukewang.com/5b1e461a000140a007570649-100-100.jpg'),
  Teacher(name: 'CrazyCodeBoy',career: 'Web前端工程师',avatar: 'https://img3.mukewang.com/54584cb50001e5b302200220-100-100.jpg'),
  Teacher(name: 'NavCat',career: '全栈工程师',avatar: 'https://img.mukewang.com/5333a0350001692e02200220-100-100.jpg'),
  Teacher(name: 'IAMTESTER',career: '软件测试工程师',avatar: 'https://img2.mukewang.com/5347593e00010cfb01400140-100-100.jpg')

];