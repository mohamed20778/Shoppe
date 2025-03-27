class CategoryModel {
  int? id;
  String? name;
  String? slug;
  String? image;
  CategoryModel(
      {required this.name,
      required this.image,
      required this.id,
      required this.slug});
  factory CategoryModel.fromJson(data) {
    return CategoryModel(
      id: data['id'],
      name: data['name'],
      slug: data['slug'],
      image: data['image'],
    );
  }
}
