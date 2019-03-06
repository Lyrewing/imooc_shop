import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:imooc/mocks/mocks.dart';

class HomeBanner extends StatefulWidget {
  @override
  HomeBannerState createState() {
    return HomeBannerState();
  }
}

class HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 120.0,
          padding: EdgeInsets.fromLTRB(0.0,8.0,0.0,0.0),
          child: Swiper(
            itemBuilder: _swiperBuilder,
            itemCount: 3,
            viewportFraction: 0.8,
            scale: 0.8,
            duration: 500,
            pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
              color: Colors.white24,
              activeColor: Colors.white,
              size: 6.0
            )),
            scrollDirection: Axis.horizontal,
            autoplay: true,
            onTap: (index) => print('点击了第$index个'),
          )
        ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: swipItems[index]
        )
      )
    );
  }
}


