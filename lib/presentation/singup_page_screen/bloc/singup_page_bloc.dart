import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:thushan_weerarathne_s_application/presentation/singup_page_screen/models/singup_page_model.dart';
part 'singup_page_event.dart';
part 'singup_page_state.dart';

/// A bloc that manages the state of a SingupPage according to the event that is dispatched to it.
class SingupPageBloc extends Bloc<SingupPageEvent, SingupPageState> {
  SingupPageBloc(SingupPageState initialState) : super(initialState) {
    on<SingupPageInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SingupPageState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    SingupPageInitialEvent event,
    Emitter<SingupPageState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      lastNameController: TextEditingController(),
      emailController: TextEditingController(),
      emailController1: TextEditingController(),
      languageController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
