import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:state_mn/data/remote/model/pin_response.dart';
import 'package:state_mn/data/remote/token_interceptor.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @Headers({
  //   "Authorization": "Client-ID ${Constants.key}"
  // })
  @GET('/photos')
  Future<List<PinResponse>> getImages();
}

Dio buildDioClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);
  dio.interceptors.addAll([
    PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90),
    TokenInterceptor()
  ]);
  return dio;
}
