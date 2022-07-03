/// message : "success"
/// code : 1
/// data : {"packages":[{"id":1,"provider_id":1,"name":{"ur":"Tourist program to Saudi Arabia for 5 days","ar":"برنامج سياحي إلى السعودية لمدة 5 أيام","en":"Tourist program to Saudi Arabia for 5 days"},"description":{"ur":"If you are thinking of visiting the Kingdom of Saudi Arabia to spend your vacation with the family, you can choose one of the tourism programs that we have organized for you in Saudi Arabia to suit your vacation days and which will enable you to spend enjoyable times in the Kingdom.\r\nWe offer you, lovers of tourist trips, a tourist program to Saudi Arabia for 5 days, where you will spend them in the most beautiful cities and tourist places in them.","ar":"إذا كنت تفكر بزيارة المملكة العربية السعودية لقضاء أجازتك مع العائلة يمكنكم اختيار أحد البرامج السياحية التي نظمناها لكم في السعودية لتناسب أيام عطلتكم والتي تمكنكم من قضاء أوقات ممتعة في المملكة.\r\nنقدم لكم محبي الرحلات السياحية برنامج سياحي إلى السعودية لمدة 5 أيام تقضونهم في أجمل المدن والأماكن السياحية فيها.","en":"If you are thinking of visiting the Kingdom of Saudi Arabia to spend your vacation with the family, you can choose one of the tourism programs that we have organized for you in Saudi Arabia to suit your vacation days and which will enable you to spend enjoyable times in the Kingdom.\r\nWe offer you, lovers of tourist trips, a tourist program to Saudi Arabia for 5 days, where you will spend them in the most beautiful cities and tourist places in them."},"image":"1656841362_sa.jpg","destinations":["8","9"],"fees":3000,"starting_city_id":6,"date_from":"2022-07-20","time_from":"10:00","provider_notes":"","provider_archive":false,"auto_approve":true,"additional":[{"id":"2","fees":"5000"},{"id":"3","fees":"0"}],"rate":0,"created_at":"2022-07-03T09:42:42.000000Z","updated_at":"2022-07-03T09:42:42.000000Z"}],"image_base":"https://qbus.rabaaladawia.com/public/images/packages"}

class PackageResponse {
  PackageResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  PackageResponse.fromJson(dynamic json) {
    _message = json['message'];
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  int? _code;
  Data? _data;

  String? get message => _message;
  int? get code => _code;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// packages : [{"id":1,"provider_id":1,"name":{"ur":"Tourist program to Saudi Arabia for 5 days","ar":"برنامج سياحي إلى السعودية لمدة 5 أيام","en":"Tourist program to Saudi Arabia for 5 days"},"description":{"ur":"If you are thinking of visiting the Kingdom of Saudi Arabia to spend your vacation with the family, you can choose one of the tourism programs that we have organized for you in Saudi Arabia to suit your vacation days and which will enable you to spend enjoyable times in the Kingdom.\r\nWe offer you, lovers of tourist trips, a tourist program to Saudi Arabia for 5 days, where you will spend them in the most beautiful cities and tourist places in them.","ar":"إذا كنت تفكر بزيارة المملكة العربية السعودية لقضاء أجازتك مع العائلة يمكنكم اختيار أحد البرامج السياحية التي نظمناها لكم في السعودية لتناسب أيام عطلتكم والتي تمكنكم من قضاء أوقات ممتعة في المملكة.\r\nنقدم لكم محبي الرحلات السياحية برنامج سياحي إلى السعودية لمدة 5 أيام تقضونهم في أجمل المدن والأماكن السياحية فيها.","en":"If you are thinking of visiting the Kingdom of Saudi Arabia to spend your vacation with the family, you can choose one of the tourism programs that we have organized for you in Saudi Arabia to suit your vacation days and which will enable you to spend enjoyable times in the Kingdom.\r\nWe offer you, lovers of tourist trips, a tourist program to Saudi Arabia for 5 days, where you will spend them in the most beautiful cities and tourist places in them."},"image":"1656841362_sa.jpg","destinations":["8","9"],"fees":3000,"starting_city_id":6,"date_from":"2022-07-20","time_from":"10:00","provider_notes":"","provider_archive":false,"auto_approve":true,"additional":[{"id":"2","fees":"5000"},{"id":"3","fees":"0"}],"rate":0,"created_at":"2022-07-03T09:42:42.000000Z","updated_at":"2022-07-03T09:42:42.000000Z"}]
/// image_base : "https://qbus.rabaaladawia.com/public/images/packages"

class Data {
  Data({
      List<Packages>? packages, 
      String? imageBase,}){
    _packages = packages;
    _imageBase = imageBase;
}

  Data.fromJson(dynamic json) {
    if (json['packages'] != null) {
      _packages = [];
      json['packages'].forEach((v) {
        _packages?.add(Packages.fromJson(v));
      });
    }
    _imageBase = json['image_base'];
  }
  List<Packages>? _packages;
  String? _imageBase;

  List<Packages>? get packages => _packages;
  String? get imageBase => _imageBase;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_packages != null) {
      map['packages'] = _packages?.map((v) => v.toJson()).toList();
    }
    map['image_base'] = _imageBase;
    return map;
  }

}

/// id : 1
/// provider_id : 1
/// name : {"ur":"Tourist program to Saudi Arabia for 5 days","ar":"برنامج سياحي إلى السعودية لمدة 5 أيام","en":"Tourist program to Saudi Arabia for 5 days"}
/// description : {"ur":"If you are thinking of visiting the Kingdom of Saudi Arabia to spend your vacation with the family, you can choose one of the tourism programs that we have organized for you in Saudi Arabia to suit your vacation days and which will enable you to spend enjoyable times in the Kingdom.\r\nWe offer you, lovers of tourist trips, a tourist program to Saudi Arabia for 5 days, where you will spend them in the most beautiful cities and tourist places in them.","ar":"إذا كنت تفكر بزيارة المملكة العربية السعودية لقضاء أجازتك مع العائلة يمكنكم اختيار أحد البرامج السياحية التي نظمناها لكم في السعودية لتناسب أيام عطلتكم والتي تمكنكم من قضاء أوقات ممتعة في المملكة.\r\nنقدم لكم محبي الرحلات السياحية برنامج سياحي إلى السعودية لمدة 5 أيام تقضونهم في أجمل المدن والأماكن السياحية فيها.","en":"If you are thinking of visiting the Kingdom of Saudi Arabia to spend your vacation with the family, you can choose one of the tourism programs that we have organized for you in Saudi Arabia to suit your vacation days and which will enable you to spend enjoyable times in the Kingdom.\r\nWe offer you, lovers of tourist trips, a tourist program to Saudi Arabia for 5 days, where you will spend them in the most beautiful cities and tourist places in them."}
/// image : "1656841362_sa.jpg"
/// destinations : ["8","9"]
/// fees : 3000
/// starting_city_id : 6
/// date_from : "2022-07-20"
/// time_from : "10:00"
/// provider_notes : ""
/// provider_archive : false
/// auto_approve : true
/// additional : [{"id":"2","fees":"5000"},{"id":"3","fees":"0"}]
/// rate : 0
/// created_at : "2022-07-03T09:42:42.000000Z"
/// updated_at : "2022-07-03T09:42:42.000000Z"

class Packages {
  Packages({
      int? id, 
      int? providerId, 
      Name? name, 
      Description? description, 
      String? image, 
      List<String>? destinations, 
      int? fees, 
      int? startingCityId, 
      String? dateFrom, 
      String? timeFrom, 
      String? providerNotes, 
      bool? providerArchive, 
      bool? autoApprove, 
      List<Additional>? additional, 
      int? rate, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _providerId = providerId;
    _name = name;
    _description = description;
    _image = image;
    _destinations = destinations;
    _fees = fees;
    _startingCityId = startingCityId;
    _dateFrom = dateFrom;
    _timeFrom = timeFrom;
    _providerNotes = providerNotes;
    _providerArchive = providerArchive;
    _autoApprove = autoApprove;
    _additional = additional;
    _rate = rate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Packages.fromJson(dynamic json) {
    _id = json['id'];
    _providerId = json['provider_id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _description = json['description'] != null ? Description.fromJson(json['description']) : null;
    _image = json['image'];
    _destinations = json['destinations'] != null ? json['destinations'].cast<String>() : [];
    _fees = json['fees'];
    _startingCityId = json['starting_city_id'];
    _dateFrom = json['date_from'];
    _timeFrom = json['time_from'];
    _providerNotes = json['provider_notes'];
    _providerArchive = json['provider_archive'];
    _autoApprove = json['auto_approve'];
    if (json['additional'] != null) {
      _additional = [];
      json['additional'].forEach((v) {
        _additional?.add(Additional.fromJson(v));
      });
    }
    _rate = json['rate'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _providerId;
  Name? _name;
  Description? _description;
  String? _image;
  List<String>? _destinations;
  int? _fees;
  int? _startingCityId;
  String? _dateFrom;
  String? _timeFrom;
  String? _providerNotes;
  bool? _providerArchive;
  bool? _autoApprove;
  List<Additional>? _additional;
  int? _rate;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  int? get providerId => _providerId;
  Name? get name => _name;
  Description? get description => _description;
  String? get image => _image;
  List<String>? get destinations => _destinations;
  int? get fees => _fees;
  int? get startingCityId => _startingCityId;
  String? get dateFrom => _dateFrom;
  String? get timeFrom => _timeFrom;
  String? get providerNotes => _providerNotes;
  bool? get providerArchive => _providerArchive;
  bool? get autoApprove => _autoApprove;
  List<Additional>? get additional => _additional;
  int? get rate => _rate;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['provider_id'] = _providerId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['image'] = _image;
    map['destinations'] = _destinations;
    map['fees'] = _fees;
    map['starting_city_id'] = _startingCityId;
    map['date_from'] = _dateFrom;
    map['time_from'] = _timeFrom;
    map['provider_notes'] = _providerNotes;
    map['provider_archive'] = _providerArchive;
    map['auto_approve'] = _autoApprove;
    if (_additional != null) {
      map['additional'] = _additional?.map((v) => v.toJson()).toList();
    }
    map['rate'] = _rate;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : "2"
/// fees : "5000"

class Additional {
  Additional({
      String? id, 
      String? fees,}){
    _id = id;
    _fees = fees;
}

  Additional.fromJson(dynamic json) {
    _id = json['id'];
    _fees = json['fees'];
  }
  String? _id;
  String? _fees;

  String? get id => _id;
  String? get fees => _fees;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['fees'] = _fees;
    return map;
  }

}

/// ur : "If you are thinking of visiting the Kingdom of Saudi Arabia to spend your vacation with the family, you can choose one of the tourism programs that we have organized for you in Saudi Arabia to suit your vacation days and which will enable you to spend enjoyable times in the Kingdom.\r\nWe offer you, lovers of tourist trips, a tourist program to Saudi Arabia for 5 days, where you will spend them in the most beautiful cities and tourist places in them."
/// ar : "إذا كنت تفكر بزيارة المملكة العربية السعودية لقضاء أجازتك مع العائلة يمكنكم اختيار أحد البرامج السياحية التي نظمناها لكم في السعودية لتناسب أيام عطلتكم والتي تمكنكم من قضاء أوقات ممتعة في المملكة.\r\nنقدم لكم محبي الرحلات السياحية برنامج سياحي إلى السعودية لمدة 5 أيام تقضونهم في أجمل المدن والأماكن السياحية فيها."
/// en : "If you are thinking of visiting the Kingdom of Saudi Arabia to spend your vacation with the family, you can choose one of the tourism programs that we have organized for you in Saudi Arabia to suit your vacation days and which will enable you to spend enjoyable times in the Kingdom.\r\nWe offer you, lovers of tourist trips, a tourist program to Saudi Arabia for 5 days, where you will spend them in the most beautiful cities and tourist places in them."

class Description {
  Description({
      String? ur, 
      String? ar, 
      String? en,}){
    _ur = ur;
    _ar = ar;
    _en = en;
}

  Description.fromJson(dynamic json) {
    _ur = json['ur'];
    _ar = json['ar'];
    _en = json['en'];
  }
  String? _ur;
  String? _ar;
  String? _en;

  String? get ur => _ur;
  String? get ar => _ar;
  String? get en => _en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ur'] = _ur;
    map['ar'] = _ar;
    map['en'] = _en;
    return map;
  }

}

/// ur : "Tourist program to Saudi Arabia for 5 days"
/// ar : "برنامج سياحي إلى السعودية لمدة 5 أيام"
/// en : "Tourist program to Saudi Arabia for 5 days"

class Name {
  Name({
      String? ur, 
      String? ar, 
      String? en,}){
    _ur = ur;
    _ar = ar;
    _en = en;
}

  Name.fromJson(dynamic json) {
    _ur = json['ur'];
    _ar = json['ar'];
    _en = json['en'];
  }
  String? _ur;
  String? _ar;
  String? _en;

  String? get ur => _ur;
  String? get ar => _ar;
  String? get en => _en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ur'] = _ur;
    map['ar'] = _ar;
    map['en'] = _en;
    return map;
  }

}