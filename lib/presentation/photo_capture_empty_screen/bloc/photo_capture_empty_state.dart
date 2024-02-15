// ignore_for_file: must_be_immutable

part of 'photo_capture_empty_bloc.dart';

/// Represents the state of PhotoCaptureEmpty in the application.
class PhotoCaptureEmptyState extends Equatable {
  PhotoCaptureEmptyState({this.photoCaptureEmptyModelObj});

  PhotoCaptureEmptyModel? photoCaptureEmptyModelObj;

  @override
  List<Object?> get props => [
        photoCaptureEmptyModelObj,
      ];
  PhotoCaptureEmptyState copyWith(
      {PhotoCaptureEmptyModel? photoCaptureEmptyModelObj}) {
    return PhotoCaptureEmptyState(
      photoCaptureEmptyModelObj:
          photoCaptureEmptyModelObj ?? this.photoCaptureEmptyModelObj,
    );
  }
}
