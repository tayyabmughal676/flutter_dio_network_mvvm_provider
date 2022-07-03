import 'dart:convert';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_network/core_utils/toasts.dart';
import 'package:flutter_network/network_service/app_logger.dart';
import 'package:flutter_network/network_service/base_api_services.dart';
import 'app_exception.dart';

class NetworkApiService extends BaseApiServices {
  final _dio = Dio();

  static final NetworkApiService _apiServiceInstance = NetworkApiService();

  static NetworkApiService get apiServicesInstance => _apiServiceInstance;

  @override
  Future callGetApiResponse(
      {required String url,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? myHeaders}) async {
    try {
      // Dio Certificate Callback
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        //  call here
        Response response = await _dio.get(url,
            options: Options(headers: myHeaders), queryParameters: parameters);

        return returnSuccessResponse(response);
      } else {
        Toasts.getWarningToast(text: "No Internet Connection Available :(");
      }
    } on DioError catch (e) {
      AppLogger.logger.d("OnGetError: $e");
    } on Exception {
      AppLogger.logger.d("badHappenedError");
    }
  }

  @override
  Future callPostApiResponse(
      {required String url,
      required dynamic body,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? myHeaders}) async {
    try {
      // Dio Certificate Callback
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        //  call here

        Response response = await _dio.post(url,
            options: Options(headers: myHeaders),
            data: body,
            queryParameters: parameters);
        return returnSuccessResponse(response);
      } else {
        Toasts.getWarningToast(text: "No Internet Connection Available :(");
      }
    } on DioError {
      AppLogger.logger.d("OnPostError");
    } on Exception {
      AppLogger.logger.d("badHappenedError");
    }
  }

  @override
  Future callDeleteApiResponse(
      {required String url,
      required body,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? myHeaders}) async {
    try {
      // Dio Certificate Callback
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        //  call here

        Response response = await _dio.delete(url,
            options: Options(headers: myHeaders),
            data: body,
            queryParameters: parameters);
        return returnSuccessResponse(response);
      } else {
        Toasts.getWarningToast(text: "No Internet Connection Available :(");
      }
    } on DioError catch (e) {
      AppLogger.logger.d("onDeleteError: $e");
    } on Exception {
      AppLogger.logger.d("badHappenedError");
    }
  }

  @override
  Future callPutApiResponse(
      {required String url,
      required body,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? myHeaders}) async {
    try {
      // Dio Certificate Callback
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        //  call here
        Response response = await _dio.put(url,
            options: Options(headers: myHeaders),
            data: body,
            queryParameters: parameters);

        return returnSuccessResponse(response);
      } else {
        Toasts.getWarningToast(text: "No Internet Connection Available :(");
      }
    } on DioError catch (e) {
      if (e.response != null) {
        var response = e.response;
        return returnErrorResponse(response!);
      }
      AppLogger.logger.d("onPutError: $e");
    } on Exception {
      AppLogger.logger.d("badHappenedError");
    }
  }

  // Check Response Status and Return Data in Success
  dynamic returnSuccessResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        // dynamic responseJson = jsonDecode(response.data);
        // AppLogger.logger.d("responseJson: $responseJson");
        return response.data;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
        throw UnauthorisedException(response.data.toString());
      case 403:
        throw ForbiddenException(response.data.toString());
      case 404:
        throw NotFoundException(response.data.toString());
      case 500:
        throw InternalServerError(response.data.toString());
      default:
        throw FetchDataException(
            'Error occurred while communicating with server with status code${response.statusCode}');
    }
  }

  // Check Response Status and Return Data in Failure
  dynamic returnErrorResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.data);
        return responseJson;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
        throw UnauthorisedException(response.data.toString());
      case 403:
        throw ForbiddenException(response.data.toString());
      case 404:
        throw NotFoundException(response.data.toString());
      case 500:
        throw InternalServerError(response.data.toString());
      default:
        throw FetchDataException(
            'Error occurred while communicating with server with status code${response.statusCode}');
    }
  }
}
