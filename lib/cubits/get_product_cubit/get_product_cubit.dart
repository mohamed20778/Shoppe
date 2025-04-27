// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoppe/core/services/product_service.dart';
import 'package:shoppe/models/product_model.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  ProductService productservice;
  GetProductCubit({required this.productservice}) : super(GetProductInitial());

  getProduct() async {
    emit(GetProductLoading());
    try {
      List<ProductModel> productlist = await productservice.getProducts();
      emit(GetProductSuccess(productlist));
    } catch (e) {
      emit(GetProductFailure());
    }
  }
}
