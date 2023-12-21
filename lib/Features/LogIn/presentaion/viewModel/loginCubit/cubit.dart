import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/Models/login_request_model.dart';
import '../../../data/repos/login_repo.dart';
import 'state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(InitState());
  static LoginCubit get(context) => BlocProvider.of(context);
  bool isVisiable = false;
  final formKey = GlobalKey<FormState>();
  changeVisibility() {
    isVisiable = !isVisiable;
    emit(ChangevisibilityState());
  }

  userLogin({required LoginRequestModel loginRequestModel}) async {
    emit(LoginLoadingState());
    final response = await loginRepo.login(loginRequestModel);
    response.when(
      success: (data) {
        emit(LoginSuccessState(model: data));
      },
      failure: (message) {
        emit(LoginFailureState(error: message.apiErrorModel.message ?? ""));
      },
    );
  }
}
