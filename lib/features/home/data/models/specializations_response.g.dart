// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specializations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationsResponseModel _$SpecializationsResponseModelFromJson(
  Map<String, dynamic> json,
) => SpecializationsResponseModel(
  specializationsDataList: (json['data'] as List<dynamic>)
      .map((e) => SpecializationsData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

SpecializationsData _$SpecializationsDataFromJson(Map<String, dynamic> json) =>
    SpecializationsData(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      doctors: (json['doctors'] as List<dynamic>)
          .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  photo: json['photo'] as String,
  gender: json['gender'] as String,
  address: json['address'] as String,
  degree: json['degree'] as String,
);
