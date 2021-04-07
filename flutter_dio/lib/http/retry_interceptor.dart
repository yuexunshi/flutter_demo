import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'connectivity_request_retrier.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    @required this.requestRetrier,
  });

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (_shouldRetry(err)) {
      try {
        requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
        throw e;
      }
    }
    super.onError(err, handler);
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.other &&
        err.error != null &&
        err.error is SocketException;
  }
}
