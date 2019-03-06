import 'package:flutter/material.dart';

class LessionItem extends StatefulWidget {
  String src;
  String title;
  double price;
  String clip;
  LessionItem({this.title,this.src,this.price,this.clip});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LessionItemState();
  }
}

class LessionItemState extends State<LessionItem> {
  @override
  Widget build(BuildContext context) {
    var src =widget.src;
    var title =widget.title;
    var price =widget.price;
    var clip =widget.clip;
    // TODO: implement build
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: <Widget>[
          Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                    image: NetworkImage('$src',scale: 30),
                    fit: BoxFit.fill,
                      )
                    ),
          ),
          SizedBox(width: 10),
          Container(
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('$title'),
                Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red[100]
                      ),
                      height: 16,
                      padding: EdgeInsets.fromLTRB(4, 2, 4,2),
                      child: Text('$clip',style: TextStyle(fontSize: 9,color: Colors.red),),
                      ),
                    Text('￥$price',style: TextStyle(fontSize: 12),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
