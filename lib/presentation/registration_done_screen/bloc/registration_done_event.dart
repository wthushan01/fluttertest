// ignore_for_file: must_be_immutable

part of 'registration_done_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegistrationDone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegistrationDoneEvent extends Equatable {}

/// Event that is dispatched when the RegistrationDone widget is first created.
class RegistrationDoneInitialEvent extends RegistrationDoneEvent {
  @override
  List<Object?> get props => [];
}
