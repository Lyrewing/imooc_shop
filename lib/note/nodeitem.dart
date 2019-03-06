import 'package:flutter/material.dart';
class  NodeItem extends StatelessWidget{
  String title;
  String tag;
  int views;
  String src;
  NodeItem({this.src,this.tag,this.title,this.views});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('$title',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),overflow: TextOverflow.ellipsis,),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    Container(  
                      padding: EdgeInsets.all(1), 
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Text('$tag',style: TextStyle(fontSize: 10,color: Colors.grey),),
                    ),
                    SizedBox(width: 10,),
                    Text('$views浏览',style: TextStyle(fontSize: 10))
                  ],
                )
              ],
            ),
          ),
          //SizedBox(width: 20,),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              image: DecorationImage(
                image: NetworkImage('$src',),
                fit: BoxFit.fill
              )
            ),
          )
        ],
      ),
    );
  }

}

