import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:thushan_weerarathne_s_application/presentation/photo_capture_empty_screen/models/photo_capture_empty_model.dart';
part 'photo_capture_empty_event.dart';
part 'photo_capture_empty_state.dart';

/// A bloc that manages the state of a PhotoCaptureEmpty according to the event that is dispatched to it.
class PhotoCaptureEmptyBloc
    extends Bloc<PhotoCaptureEmptyEvent, PhotoCaptureEmptyState> {
  PhotoCaptureEmptyBloc(PhotoCaptureEmptyState initialState)
      : super(initialState) {
    on<PhotoCaptureEmptyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PhotoCaptureEmptyInitialEvent event,
    Emitter<PhotoCaptureEmptyState> emit,
  ) async {}
}
