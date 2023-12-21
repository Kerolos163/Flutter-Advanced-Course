import 'package:dio/dio.dart';
import 'api_constants.dart';
import '../../Features/LogIn/data/Models/login_request_model.dart';
import '../../Features/LogIn/data/Models/login_response_model.dart';

import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: APIConatant.apiBaseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(APIConatant.login)
  Future<ModelResponseModel> login(
    @Body() LoginRequestModel loginRequestBody,
  );
}
