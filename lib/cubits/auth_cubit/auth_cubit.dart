// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages, unnecessary_import
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubitCubit extends Cubit<AuthCubitState> {
  AuthCubitCubit() : super(AuthCubitInitial());

  Future<void> loginUser(String email, String password) async {
    emit(AuthLoadingState());
    const url = "https://api.escuelajs.co/api/v1/auth/login";
    final dio = Dio();
    try {
      final response =
          await dio.post(url, data: {'email': email, 'password': password});
      if (kDebugMode) {
        print(response.data);
      }
      if (response.statusCode == 201) {
        emit(AuthSuccessState());
      } else if (response.statusCode == 401) {
        emit(AuthFailureState());
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      emit(AuthFailureState());
    }
  }
}
