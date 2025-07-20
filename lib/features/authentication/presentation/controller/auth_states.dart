import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_states.freezed.dart';

@freezed
class AuthStates<T> with _$AuthStates<T> {
  const factory AuthStates.initial() = _Initial;
  const factory AuthStates.loading() = Loading;
  const factory AuthStates.success(T data) = Success;
  const factory AuthStates.error(String message) = Error;
  const factory AuthStates.registerLoading() = RegisterLoading;
  const factory AuthStates.registerSuccess(T data) = RegisterSuccess;
  const factory AuthStates.registerError({required String error}) =
      RegisterError;
}
