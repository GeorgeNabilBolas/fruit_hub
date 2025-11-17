class ErrorModel {
  ErrorModel({required this.field, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      field: json['field'] ?? '',
      message: json['message'] ?? '',
    );
  }

  final String field;
  final String message;

  @override
  String toString() => 'ErrorModel(field: $field, message: $message)';
}
