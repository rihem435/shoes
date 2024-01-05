import 'package:app/features/login/data/models/login_request_body.dart';
import 'package:app/features/login/data/repositories/login_repository.dart';
import 'package:app/features/login/logic/login_states.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginCubit extends Cubit<LoginStates> {
  final LoginRepository _loginRepository;
  LoginCubit(this._loginRepository) : super(const LoginStates.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login(LoginRequestBody loginRequestBody) async {
    emit(LoginStates.initial());
    final response = await _loginRepository.login(loginRequestBody );
    response.whenOrNull(
      success: (data) {
        emit(LoginStates.success(data));
      },
      failure: (errorHandler) {
        emit(
          LoginStates.error(error: errorHandler.apiErrorModel.message ?? ""),
        );
      },
    );
  }
}
