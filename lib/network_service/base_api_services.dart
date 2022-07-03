abstract class BaseApiServices {
  // Get Request
  Future<dynamic> callGetApiResponse(
      {required String url,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? myHeaders});

  // Post Request
  Future<dynamic> callPostApiResponse(
      {required String url,
      required dynamic body,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? myHeaders});

  // Put Request
  Future<dynamic> callPutApiResponse(
      {required String url,
      required dynamic body,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? myHeaders});

  // Delete Request
  Future<dynamic> callDeleteApiResponse(
      {required String url,
      required dynamic body,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? myHeaders});
}
