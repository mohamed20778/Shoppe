import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/models/categorymodel.dart';

class CategoriesService {
  final Dio dio;
  CategoriesService({Dio? dio})
      : dio = dio ?? Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
  List<CategoryModel> categories = [];

  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await dio.get('/categories');
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
