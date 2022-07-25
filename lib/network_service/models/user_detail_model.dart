import 'dart:convert';

class UserDetail {
  String? name;
  String? work;

  UserDetail({this.name, this.work});

  static Map<String, dynamic> toJson({required UserDetail userDetail}) => {
        "name": userDetail.name,
        "work": userDetail.work,
      };

  factory UserDetail.fromJson(Map<String, dynamic> jsonData) {
    return UserDetail(name: jsonData['name'], work: jsonData['work']);
  }

  static String encode(List<UserDetail> userDetail) => json.encode(userDetail
      .map<Map<String, dynamic>>((user) => UserDetail.toJson(userDetail: user))
      .toList());

  static List<UserDetail> decode(String userDetails) =>
      (json.decode(userDetails) as List<dynamic>)
          .map<UserDetail>((e) => UserDetail.fromJson(e))
          .toList();
}
