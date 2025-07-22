import 'dart:developer';

import 'package:docdoc/core/helpers/shared_pref.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/authentication/data/models/login_request_body.dart';
import 'package:docdoc/features/authentication/data/models/register_request_body.dart';
import 'package:docdoc/features/authentication/data/repositories/auth_repository.dart';
import 'package:docdoc/features/authentication/presentation/controller/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthController extends Cubit<AuthStates> {
  final AuthRepository _loginRepos;
  AuthController(this._loginRepos) : super(AuthStates.initial());

  Future<void> login(LoginRequestBody body) async {
    emit(AuthStates.loading());
    final result = await _loginRepos.login(body);

    result.when(
      success: (data) async {
        final prefs = SharedPrefService();
        await prefs.setString(key: 'name', value: data.user.user);
        await prefs.setSecureString(key: 'token', value: data.user.token);
        log(data.user.token, name: 'Login successful');
        emit(AuthStates.success(data));
      },
      failure: (error) {
        emit(AuthStates.error(error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> register(RegisterRequestBody body) async {
    emit(const AuthStates.registerLoading());
    final result = await _loginRepos.register(body);
    result.when(
      success: (signUpResponse) {
        emit(AuthStates.registerSuccess(signUpResponse));
      },
      failure: (error) {
        emit(
          AuthStates.registerError(error: error.apiErrorModel.message ?? ""),
        );
      },
    );
  }
}
