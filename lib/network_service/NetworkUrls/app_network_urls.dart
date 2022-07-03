class AppNetworkUrls {
  static const _baseUrl = 'https://reqres.in/api';

  static get baseUrl => _baseUrl;

  static const moviesBaseUrl =
      'https://dea91516-1da3-444b-ad94-c6d0c4dfab81.mock.pstmn.io/';

  static const loginEndPint = '$_baseUrl/login';

  static const registerApiEndPoint = '$_baseUrl/register';

  static const moviesListEndPoint = '${moviesBaseUrl}movies_list';

  static const packageEndPoint = "http://qbus.rabaaladawia.com/api/v1/packages";
}
