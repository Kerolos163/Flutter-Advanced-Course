import 'dart:developer';

import 'package:my_advanced_app/Core/networking/api_error_handler.dart';
import 'package:my_advanced_app/Core/networking/api_result.dart';
import 'package:my_advanced_app/Core/networking/api_service.dart';
import 'package:my_advanced_app/Features/LogIn/data/Models/login_request_model.dart';
import 'package:my_advanced_app/Features/LogIn/data/Models/login_response_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<ModelResponseModel>> login(
      LoginRequestModel loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      log(errro.toString());
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
