import 'package:flutter/material.dart';
class Tag extends StatelessWidget{
  String name;
  Tag({this.name});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child:Center(child: Text(name,style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,) ,),
    );
  }
}