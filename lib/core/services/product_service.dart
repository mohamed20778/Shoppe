import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/models/product_model.dart';

class ProductService {
  final Dio dio;
  ProductService({Dio? dio})
      : dio = dio ?? Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
  List<ProductModel> products = [];

  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await dio.get('/products');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        if (kDebugMode) {
          print("my produvt---------$data");
        }
        for (int i = 0; i < data.length; i++) {
          products.add(ProductModel.fromJson(data[i]));
        }
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return products;
  }
}
