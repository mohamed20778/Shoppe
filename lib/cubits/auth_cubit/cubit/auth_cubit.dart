import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubitCubit extends Cubit<AuthCubitState> {
  AuthCubitCubit() : super(AuthCubitInitial());

  Future<void> loginUser(String email, String password) async {
    emit(AuthLoadingState());
    final url = 'https://api.escuelajs.co/api/v1/auth/login';
    final dio = Dio();
    final response =
        await dio.post(url, data: {'email': email, 'password': password});
    print(response.data);
  }
}
