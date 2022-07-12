import 'package:json_annotation/json_annotation.dart';

part 'test_response.g.dart';

@JsonSerializable()
class TestResponse {
  String? message;
  int? code;
  Data? data;

  TestResponse({
    this.message,
    this.code,
    this.data,
  });

  factory TestResponse.fromJson(Map<String, dynamic> json) =>
      _$TestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TestResponseToJson(this);
}

@JsonSerializable()
class Data {
  String? token;
  User? user;

  Data({
    this.token,
    this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  String? address;
  @JsonKey(name: 'date_of_birth')
  String? dateOfBirth;
  @JsonKey(name: 'marital_status')
  String? maritalStatus;
  int? block;
  @JsonKey(name: 'block_notes')
  String? blockNotes;
  int? wallet;
  String? language;

  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.address,
    this.dateOfBirth,
    this.maritalStatus,
    this.block,
    this.blockNotes,
    this.wallet,
    this.language,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
