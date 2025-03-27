import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shoppe/models/categorymodel.dart';

class CategoriesService {
  final Dio dio = Dio();
  List<CategoryModel> categories = [];
  final url = "https://api.escuelajs.co/api/v1/categories";

  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        if (kDebugMode) {
          print(data);
        }
        for (int i = 0; i < data.length; i++) {
          categories.add(CategoryModel.fromJson(data[i]));
        }
      } else {
        throw Exception(response.statusMessage);
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    }
    return categories;
  }
}
