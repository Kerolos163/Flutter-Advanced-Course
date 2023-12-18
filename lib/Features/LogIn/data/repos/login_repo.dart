import 'package:my_advanced_app/Core/networking/api_error_handler.dart';
import 'package:my_advanced_app/Core/networking/api_result.dart';
import 'package:my_advanced_app/Core/networking/api_service.dart';
import 'package:my_advanced_app/Features/LogIn/data/Models/login_request_model.dart';
import 'package:my_advanced_app/Features/LogIn/data/Models/login_response_model.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo({required this.apiService});
  Future<ApiResult<ModelResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      var response = await apiService.login(loginRequestModel);
      return ApiResult.success(response);
    } on Exception catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
