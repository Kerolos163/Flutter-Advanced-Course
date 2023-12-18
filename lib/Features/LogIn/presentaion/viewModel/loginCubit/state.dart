import 'package:my_advanced_app/Features/LogIn/data/Models/login_response_model.dart';

abstract class LoginState {}

class InitState extends LoginState {}

class ChangevisibilityState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final ModelResponseModel model;

  LoginSuccessState({required this.model});
}

class LoginFailureState extends LoginState {
  final String error;

  LoginFailureState({required this.error});
}
