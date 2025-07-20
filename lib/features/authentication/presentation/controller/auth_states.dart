import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_states.freezed.dart';

@freezed
class AuthStates<T> with _$AuthStates<T> {
  const factory AuthStates.initial() = _Initial;
  const factory AuthStates.loading() = Loading;
  const factory AuthStates.success(T data) = Success;
  const factory AuthStates.error(String message) = Error;
}
