// ignore_for_file: must_be_immutable

part of 'photo_capture_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PhotoCaptureEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PhotoCaptureEmptyEvent extends Equatable {}

/// Event that is dispatched when the PhotoCaptureEmpty widget is first created.
class PhotoCaptureEmptyInitialEvent extends PhotoCaptureEmptyEvent {
  @override
  List<Object?> get props => [];
}
