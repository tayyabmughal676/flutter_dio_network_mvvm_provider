enum StatusEnum { LOADING, COMPLETED, ERROR }

class ApiResponse<T> {
  StatusEnum? statusEnum;
  T? data;
  String? message;

  ApiResponse({this.statusEnum, this.data, this.message});

  ApiResponse.loading() : statusEnum = StatusEnum.LOADING;

  ApiResponse.completed(this.data) : statusEnum = StatusEnum.COMPLETED;

  ApiResponse.error(this.message) : statusEnum = StatusEnum.ERROR;

  @override
  String toString() {
    return "Status : $statusEnum \n Message : $message \n Data: $data";
  }
}
