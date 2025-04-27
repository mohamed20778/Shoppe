import 'package:shoppe/models/categorymodel.dart';

class ProductModel {
  final int id;
  final String title;
  final String slug;
  final int price;
  final String description;
  final CategoryModel category;
  final List<String> images;

  ProductModel({
    required this.id,
    required this.title,
    required this.slug,
    required this.price,
    required this.description,
    required this.category,
    required this.images,
  });

  factory ProductModel.fromJson(productData) {
    return ProductModel(
      id: productData['id'],
      title: productData['title'],
      slug: productData['slug'],
      price: productData['price'],
      description: productData['description'],
      category: CategoryModel.fromJson(productData['category']),
      images: List<String>.from(productData['images']),
    );
  }
}
