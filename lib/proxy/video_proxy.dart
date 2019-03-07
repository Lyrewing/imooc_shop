import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:imooc/model/video.dart';

class VideoProxy {
  static Future<dynamic> getVideo() async {
    try {
      var response = await Dio().get<Video>('www.baidu.com');
      return response;
    } catch (e) {}
  }

  static Future<dynamic> getVideoFromJson(String action) async {
    var str = await rootBundle.loadString('mock/$action.json');
    var response = json.decode(str);
    return response;
  }
}
