import 'package:flutter/cupertino.dart';

import '../local_cache/preference_utils.dart';
import '../network_service/models/user_detail_model.dart';

class PrefRespository {
  // Generate Instance
  static final PrefRespository _prefRespository = PrefRespository();

  // Get Instance of the class.
  static PrefRespository get prefRespositoryInstance => _prefRespository;

  Future<List<UserDetail>> getPrefSharedUserList() async {
    try {
      final String userDataList = UserDetail.encode([
        UserDetail(name: "Usman", work: "Software Engineer"),
        UserDetail(name: "Thor", work: "Senior Software Engineer"),
        UserDetail(name: "Usman", work: "Software Engineer"),
        UserDetail(name: "Thor", work: "Senior Software Engineer"),
        UserDetail(name: "Usman", work: "Software Engineer"),
        UserDetail(name: "Thor", work: "Senior Software Engineer"),
        UserDetail(name: "Usman", work: "Software Engineer"),
        UserDetail(name: "Thor", work: "Senior Software Engineer"),
        UserDetail(name: "Usman", work: "Software Engineer"),
        UserDetail(name: "Thor", work: "Senior Software Engineer"),
        UserDetail(name: "Usman", work: "Software Engineer"),
        UserDetail(name: "Thor", work: "Senior Software Engineer"),
      ]);

      await PreferenceUtils.setString("getUserList", userDataList);
      final String? userDetailString = PreferenceUtils.getString("getUserList");

      final List<UserDetail> userDetailList =
          UserDetail.decode(userDetailString!);

      debugPrint("userDetailList:${userDetailList.map((e) => e)}");

      return userDetailList;
    } catch (e) {
      debugPrint("onError: $e");
      return [];
    }
  }
}
