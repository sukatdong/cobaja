import 'dart:convert';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';


class getnews {
  static Future<List<dynamic>> fetchnews(String category) async {
    List<dynamic> news = [];
    try {
      final url = "https://api-berita-indonesia.vercel.app/cnn/$category";
      final file = await DefaultCacheManager().getSingleFile(url);
      final response = await file.readAsString().then((jsonString) => jsonDecode(jsonString));
      final data = response['data']['posts'] as List<dynamic>;
      news.addAll(data);
    } catch (error) {
      print(error);
    }
    return news;
  }
}