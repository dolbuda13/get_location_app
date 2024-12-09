import 'package:dio/dio.dart';
import '../models/location.dart';

class LocationRepository {
  final Dio _dio = Dio();
  final String _baseUrl = "https://openapi.naver.com/v1/search/local.json";
  final String _clientId = "";
  final String _clientSecret = "";

  Future<List<Location>> searchLocations(String query) async {
    try {
      final response = await _dio.get(
        _baseUrl,
        queryParameters: {"query": query, "display": 5},
        options: Options(headers: {
          "X-Naver-Client-Id": _clientId,
          "X-Naver-Client-Secret": _clientSecret,
        }),
      );
      final List data = response.data['items'];
      return data.map((item) => Location.fromJson(item)).toList();
    } catch (e) {
      throw Exception("Failed to fetch locations: $e");
    }
  }
}
