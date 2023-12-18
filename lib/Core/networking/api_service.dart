import 'package:dio/dio.dart';
import 'package:my_advanced_app/Core/networking/api_constants.dart';
import 'package:my_advanced_app/Features/LogIn/data/Models/login_request_model.dart';
import 'package:my_advanced_app/Features/LogIn/data/Models/login_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: APIConatant.baseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(APIConatant.login)
  Future<ModelResponseModel> login(@Body() LoginRequestModel loginRequestModel);
}
