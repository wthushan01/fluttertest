// ignore_for_file: must_be_immutable

part of 'singup_page_bloc.dart';

/// Represents the state of SingupPage in the application.
class SingupPageState extends Equatable {
  SingupPageState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.emailController1,
    this.languageController,
    this.dateOfBirthController,
    this.isShowPassword = true,
    this.singupPageModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? emailController1;

  TextEditingController? languageController;

  TextEditingController? dateOfBirthController;

  SingupPageModel? singupPageModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        emailController1,
        languageController,
        dateOfBirthController,
        isShowPassword,
        singupPageModelObj,
      ];
  SingupPageState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? emailController1,
    TextEditingController? languageController,
    TextEditingController? dateOfBirthController,
    bool? isShowPassword,
    SingupPageModel? singupPageModelObj,
  }) {
    return SingupPageState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      emailController1: emailController1 ?? this.emailController1,
      languageController: languageController ?? this.languageController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      singupPageModelObj: singupPageModelObj ?? this.singupPageModelObj,
    );
  }
}
