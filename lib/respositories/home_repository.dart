import 'package:flutter_network/network_service/NetworkUrls/app_network_urls.dart';
import 'package:flutter_network/network_service/app_logger.dart';
import 'package:flutter_network/network_service/models/PackageResponse.dart';
import 'package:flutter_network/network_service/models/movie_response.dart';
import 'package:flutter_network/network_service/network_api_service.dart';

class HomeRepository {
  // Generate Instance
  static final HomeRepository _homeRepository = HomeRepository();

  // Get Instance of the class
  static HomeRepository get homeRepositoryInstance => _homeRepository;

  Future<PackageResponse?> getMovieList() async {
    try {
      // Request Body
      final body = {
        "code": "",
        "date_from": "",
        "date_to": "",
        "time_from": "",
        "starting_city_id": "",
        "additional": [],
        "offset": 0
      };

      // Demo JSON-WEB-TOKEN JWT
      var userToken = "sdfghghgfdsfggf";
      // Request Header
      final headers = {
        "Content-Type": "application/json",
        "Authorization": "Bearer $userToken"
      };

      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(
              url: AppNetworkUrls.packageEndPoint,
              body: body,
              myHeaders: headers);
      return response = PackageResponse.fromJson(response);
    } catch (e) {
      AppLogger.logger.d("getMovieListError: $e");
    }
    return null;
  }
}
