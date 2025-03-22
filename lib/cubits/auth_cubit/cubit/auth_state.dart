part of 'auth_cubit.dart';

@immutable
sealed class AuthCubitState {}

final class AuthCubitInitial extends AuthCubitState {}

final class AuthLoadingState extends AuthCubitState {}

final class AuthSuccessState extends AuthCubitState {}

final class AuthFailedState extends AuthCubitState {}
