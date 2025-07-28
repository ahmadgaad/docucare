import 'package:docdoc/core/extensions/nullable_checks.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable(createToJson: false)
class ApiErrorModel {
  final String? message;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errors;
  final int? code;

  ApiErrorModel({this.message, this.errors, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  String getAllErrorMessages() {
    if (errors.isNullOrEmpty()) return message ?? 'Unknown error occurred';

    final errorMessage = errors!.entries
        .map((entry) {
          final value = entry.value;
          return value is List ? value.join(', ') : value.toString();
        })
        .join('\n');
        
    return errorMessage;
  }
}
