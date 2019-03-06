import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:imooc/mocks/mocks.dart';

class TeacherSection extends StatefulWidget {
  @override
  TeacherSectionState createState() {
    return TeacherSectionState();
  }
}

class TeacherSectionState extends State<TeacherSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Swiper(
              itemBuilder: _swiperBuilder,
              itemCount: teachers.length,
              viewportFraction: 0.3,
              scale: 1.0,
              duration: 500,
              loop: true,
              pagination: SwiperPagination.rect,
              scrollDirection: Axis.horizontal,
              autoplay: false,
              onTap: (index) => print('点击了第$index个'),
            )),
        Container(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.transparent.withOpacity(0.1),
                ),
                width: 120,
                height: 150,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            maxRadius: 35,
            backgroundImage: NetworkImage(teachers[index].avatar),
          ),
          SizedBox(
            height: 8,
          ),
          Text(teachers[index].name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black)),
          SizedBox(
            height: 2,
          ),
          Text(
            teachers[index].career,
            style: TextStyle(fontSize: 10, color: Colors.black),
          )
        ],
      ),
    );
  }
}
