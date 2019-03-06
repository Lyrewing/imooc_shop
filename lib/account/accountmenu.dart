import 'package:flutter/material.dart';

class AccountMenu extends StatelessWidget {
  String name;
  String nop;
  AccountMenu({this.name,this.nop});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              Row(
                children: <Widget>[
                  Text(
                    nop,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.red),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
