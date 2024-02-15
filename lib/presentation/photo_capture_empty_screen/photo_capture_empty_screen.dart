import 'bloc/photo_capture_empty_bloc.dart';
import 'models/photo_capture_empty_model.dart';
import 'package:flutter/material.dart';
import 'package:thushan_weerarathne_s_application/core/app_export.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_elevated_button.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_outlined_button.dart';

class PhotoCaptureEmptyScreen extends StatelessWidget {
  const PhotoCaptureEmptyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PhotoCaptureEmptyBloc>(
      create: (context) => PhotoCaptureEmptyBloc(PhotoCaptureEmptyState(
        photoCaptureEmptyModelObj: PhotoCaptureEmptyModel(),
      ))
        ..add(PhotoCaptureEmptyInitialEvent()),
      child: PhotoCaptureEmptyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoCaptureEmptyBloc, PhotoCaptureEmptyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 31.h,
                vertical: 49.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.v),
                  Text(
                    "lbl_smile".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 31.v),
                  Container(
                    height: 457.v,
                    width: 296.h,
                    decoration: BoxDecoration(
                      color: appTheme.black900,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Container(
                    width: 292.h,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      right: 3.h,
                    ),
                    child: Text(
                      "msg_to_complete_the".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  _buildPhotoCaptureButtons(context),
                ],
              ),
            ),
            bottomNavigationBar: _buildPoweredBySection(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhotoCaptureButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomOutlinedButton(
          width: 103.h,
          text: "lbl_back".tr,
        ),
        CustomElevatedButton(
          width: 180.h,
          text: "lbl_capture".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPoweredBySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 5.h,
        bottom: 3.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAaaTechLogo1,
                height: 8.v,
                width: 11.h,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_powered_by_aaa_tech".tr,
                  style: CustomTextStyles.labelSmallDeeppurpleA200,
                ),
              ),
            ],
          ),
          Text(
            "lbl_version_2_3_0".tr,
            style: theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
