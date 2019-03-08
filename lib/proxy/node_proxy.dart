import 'package:dio/dio.dart';

class  NodeProxy {
  static Future<List<dynamic>> getNodes() async {
      var response = await Dio().get<List<dynamic>>('http://localhost:3000/nodes');
      if(response.statusCode == 200){
        return response.data;
      }else{
        throw Exception('请求接口错误！');
      }
  }
}