import 'package:dio/dio.dart';
import 'dart:convert';
import '../models/location.dart';
import 'package:http/http.dart';

class LocationRepository {
  final Dio _dio = Dio();
  final String _baseUrl = "https://openapi.naver.com/v1/search/local.json";
  final String _clientId = "";
  final String _clientSecret = "";//개인정보 올리지 않도록 주의

  Future<List<Location>> searchLocations(String query) async {
    //네트워크 통신은 반드시 try catch 필요
    try {
      final response = await _dio.get(
        _baseUrl,
        queryParameters: {"query": query, "display":10},
        options: Options(headers: {
          "X-Naver-Client-Id": _clientId,
          "X-Naver-Client-Secret": _clientSecret,
        }),
      );
    if (response.statusCode == 200) {//get 요청 성공일 때
        final List data = response.data['items'];
        return data.map((item) => Location.fromJson(item)).toList();
      }
        return [];
      
    } catch (e) {//에러 났을 때
      print(e);
      return [];
    }
  }
}
