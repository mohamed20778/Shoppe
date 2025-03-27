part of 'get_categories_cubit.dart';

@immutable
sealed class GetCategoriesState {}

final class GetCategoriesInitial extends GetCategoriesState {}

final class GetCategoriesLoading extends GetCategoriesState {}

final class GetCategoriesSuccess extends GetCategoriesState {
  List<CategoryModel> categorieList;
  GetCategoriesSuccess(this.categorieList);
}

final class GetCategoriesFailure extends GetCategoriesState {}
