import 'package:freezed_annotation/freezed_annotation.dart';

part 'specializations_response.g.dart';

@JsonSerializable(createToJson: false, createFactory: true)
class SpecializationsResponseModel {
  @JsonKey(name: 'data')
  final List<SpecializationsData> specializationsDataList;

  SpecializationsResponseModel({required this.specializationsDataList});

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false, createFactory: true)
class SpecializationsData {
  final int id;
  final String name;
  final List<DoctorModel> doctors;

  SpecializationsData({
    required this.id,
    required this.name,
    required this.doctors,
  });

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable(createToJson: false, createFactory: true)
class DoctorModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String gender;
  final String address;
  final String degree;

  DoctorModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.gender,
    required this.address,
    required this.degree,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}
