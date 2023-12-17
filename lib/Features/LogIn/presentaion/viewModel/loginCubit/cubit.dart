import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/viewModel/loginCubit/state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitState());
  static LoginCubit get(context) => BlocProvider.of(context);
  bool isVisiable = false;
  changeVisibility() {
    isVisiable = !isVisiable;
    emit(Changevisibility());
  }
}
