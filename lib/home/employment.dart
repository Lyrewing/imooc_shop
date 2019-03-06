import 'package:flutter/material.dart';
class EmploymentItem extends StatelessWidget{
  String title;
  String subTitle;
  String src;
  EmploymentItem({this.src,this.title,this.subTitle});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 180,
      padding: EdgeInsets.fromLTRB(15.0,6.0,10.0,10),
      child: Row(
        children: <Widget>[
          Column(           
            children: <Widget>[
              Container(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('$title',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    Text('$subTitle',style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),softWrap: true,),
                  ],
                ) 
              ),

            ],
          ),
          SizedBox(width: 4.0,),
          Image.network('$src',scale: 8,)
        ],
      ),
    );
  }

}