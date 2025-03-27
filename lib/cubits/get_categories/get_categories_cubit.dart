import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:shoppe/core/services/categories_service.dart';
import 'package:shoppe/models/categorymodel.dart';

part 'get_categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  GetCategoriesCubit() : super(GetCategoriesInitial());

  late CategoryModel categoryModel;
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
