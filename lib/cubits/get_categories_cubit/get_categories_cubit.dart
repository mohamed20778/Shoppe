// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoppe/core/services/categories_service.dart';
import 'package:shoppe/models/categorymodel.dart';

part 'get_categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  CategoriesService categoriesService;
  GetCategoriesCubit({required this.categoriesService})
      : super(GetCategoriesInitial());

  getCategories() async {
    emit(GetCategoriesLoading());
    try {
      List<CategoryModel> categorisList =
          await CategoriesService().getCategories();

      emit(GetCategoriesSuccess(categorisList));
    } catch (e) {
      emit(GetCategoriesFailure());
    }
  }
}
