import 'package:flutter/material.dart';
import 'package:flutter_network/respositories/pref_respository.dart';

import '../network_service/models/user_detail_model.dart';

class PrefProvider with ChangeNotifier {
  Future<List<UserDetail>> getStoredUserList() async {
    List<UserDetail> list =
        await PrefRespository.prefRespositoryInstance.getPrefSharedUserList();
    notifyListeners();
    return list;
  }
}
