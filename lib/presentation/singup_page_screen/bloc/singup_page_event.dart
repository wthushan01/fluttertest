// ignore_for_file: must_be_immutable

part of 'singup_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingupPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingupPageEvent extends Equatable {}

/// Event that is dispatched when the SingupPage widget is first created.
class SingupPageInitialEvent extends SingupPageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SingupPageEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
