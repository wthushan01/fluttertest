// ignore_for_file: must_be_immutable

part of 'login_page_bloc.dart';

/// Represents the state of LoginPage in the application.
class LoginPageState extends Equatable {
  LoginPageState({
    this.emailController,
    this.languageEditTextController,
    this.isShowPassword = true,
    this.loginPageModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? languageEditTextController;

  LoginPageModel? loginPageModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        languageEditTextController,
        isShowPassword,
        loginPageModelObj,
      ];
  LoginPageState copyWith({
    TextEditingController? emailController,
    TextEditingController? languageEditTextController,
    bool? isShowPassword,
    LoginPageModel? loginPageModelObj,
  }) {
    return LoginPageState(
      emailController: emailController ?? this.emailController,
      languageEditTextController:
          languageEditTextController ?? this.languageEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginPageModelObj: loginPageModelObj ?? this.loginPageModelObj,
    );
  }
}
