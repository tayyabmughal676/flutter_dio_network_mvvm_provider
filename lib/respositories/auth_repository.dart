import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_network/local_cache/preference_utils.dart';
import 'package:flutter_network/network_service/app_logger.dart';
import 'package:flutter_network/network_service/network_api_service.dart';

class AuthRepository {
  // Generate Instance
  static final AuthRepository _authRepository = AuthRepository();

  // Get Instance of the class.
  static AuthRepository get authRepositoryInstance => _authRepository;

  Future<dynamic> authLoginApi(
      {required dynamic data, required String url}) async {
    try {
      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(url: url, body: data);
      return response;
    } catch (e) {
      AppLogger.logger.d("loginApiError: $e");
    }
  }
}
