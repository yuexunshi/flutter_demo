import 'package:dio/dio.dart';
import '../dio_new.dart';
import 'http_transformer.dart';

class DefaultTransformer extends HttpTransformer {
  @override
  HttpResponse parse(Response response) {
    return HttpResponse.success(response.data);
  }
}
