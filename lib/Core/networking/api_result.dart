import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_advanced_app/Core/networking/api_error_handler.dart';
part 'api_result.freezed.dart';
@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler message) = Failure<T>;
}