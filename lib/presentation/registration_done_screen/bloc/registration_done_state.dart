// ignore_for_file: must_be_immutable

part of 'registration_done_bloc.dart';

/// Represents the state of RegistrationDone in the application.
class RegistrationDoneState extends Equatable {
  RegistrationDoneState({this.registrationDoneModelObj});

  RegistrationDoneModel? registrationDoneModelObj;

  @override
  List<Object?> get props => [
        registrationDoneModelObj,
      ];
  RegistrationDoneState copyWith(
      {RegistrationDoneModel? registrationDoneModelObj}) {
    return RegistrationDoneState(
      registrationDoneModelObj:
          registrationDoneModelObj ?? this.registrationDoneModelObj,
    );
  }
}
