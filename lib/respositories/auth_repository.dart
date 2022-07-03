import 'package:flutter_network/network_service/app_logger.dart';
import 'package:flutter_network/network_service/network_api_service.dart';

class AuthRepository {
  static final AuthRepository _authRepository = AuthRepository();

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
