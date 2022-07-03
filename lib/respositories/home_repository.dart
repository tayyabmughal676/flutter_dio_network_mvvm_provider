import 'package:flutter_network/network_service/NetworkUrls/app_network_urls.dart';
import 'package:flutter_network/network_service/app_logger.dart';
import 'package:flutter_network/network_service/models/PackageResponse.dart';
import 'package:flutter_network/network_service/models/movie_response.dart';
import 'package:flutter_network/network_service/network_api_service.dart';

class HomeRepository {
  static final HomeRepository _homeRepository = HomeRepository();

  static HomeRepository get homeRepositoryInstance => _homeRepository;

  Future<PackageResponse?> getMovieList() async {
    try {
      final body = {
        "code": "",
        "date_from": "",
        "date_to": "",
        "time_from": "",
        "starting_city_id": "",
        "additional": [],
        "offset": 0
      };

      final headers = {"Content-Type": "application/json"};

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
