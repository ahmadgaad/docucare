import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/authentication/data/models/login_request_body.dart';
import 'package:docdoc/features/authentication/data/repositories/login_repository.dart';
import 'package:docdoc/features/authentication/presentation/controller/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthController extends Cubit<AuthStates> {
  final LoginRepository _loginRepos;
  AuthController(this._loginRepos) : super(AuthStates.initial());

  Future<void> login(LoginRequestBody body) async {
    emit(AuthStates.loading());
    final result = await _loginRepos.login(body);

    result.when(
      success: (data) {
        emit(AuthStates.success(data));
      },
      failure: (error) {
        emit(AuthStates.error(error.apiErrorModel.message ?? ''));
      },
    );
  }
}
