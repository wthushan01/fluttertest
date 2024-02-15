import 'bloc/registration_done_bloc.dart';
import 'models/registration_done_model.dart';
import 'package:flutter/material.dart';
import 'package:thushan_weerarathne_s_application/core/app_export.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_elevated_button.dart';

class RegistrationDoneScreen extends StatelessWidget {
  const RegistrationDoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistrationDoneBloc>(
      create: (context) => RegistrationDoneBloc(RegistrationDoneState(
        registrationDoneModelObj: RegistrationDoneModel(),
      ))
        ..add(RegistrationDoneInitialEvent()),
      child: RegistrationDoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationDoneBloc, RegistrationDoneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 31.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_all_done".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 31.v),
                  _buildRegistrationDoneOne(context),
                  SizedBox(height: 32.v),
                  SizedBox(
                    width: 298.h,
                    child: Text(
                      "msg_your_details_have".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  CustomElevatedButton(
                    width: 180.h,
                    text: "lbl_done".tr,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildTwentyPoweredByText(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRegistrationDoneOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 57.h,
        vertical: 71.v,
      ),
      decoration: AppDecoration.fillDeepPurpleA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder148,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 13.v),
          CustomImageView(
            imagePath: ImageConstant.imgWhiteCheckMark,
            height: 141.v,
            width: 180.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyPoweredByText(BuildContext context) {
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
