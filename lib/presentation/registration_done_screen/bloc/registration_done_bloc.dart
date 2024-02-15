import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:thushan_weerarathne_s_application/presentation/registration_done_screen/models/registration_done_model.dart';
part 'registration_done_event.dart';
part 'registration_done_state.dart';

/// A bloc that manages the state of a RegistrationDone according to the event that is dispatched to it.
class RegistrationDoneBloc
    extends Bloc<RegistrationDoneEvent, RegistrationDoneState> {
  RegistrationDoneBloc(RegistrationDoneState initialState)
      : super(initialState) {
    on<RegistrationDoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistrationDoneInitialEvent event,
    Emitter<RegistrationDoneState> emit,
  ) async {}
}
