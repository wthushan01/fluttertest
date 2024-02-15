import 'bloc/singup_page_bloc.dart';
import 'models/singup_page_model.dart';
import 'package:flutter/material.dart';
import 'package:thushan_weerarathne_s_application/core/app_export.dart';
import 'package:thushan_weerarathne_s_application/core/utils/validation_functions.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_elevated_button.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_outlined_button.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_text_form_field.dart';

class SingupPageScreen extends StatelessWidget {
  SingupPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SingupPageBloc>(
      create: (context) => SingupPageBloc(SingupPageState(
        singupPageModelObj: SingupPageModel(),
      ))
        ..add(SingupPageInitialEvent()),
      child: SingupPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 94.h),
                      child: Text(
                        "lbl_register".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 28.v),
                    _buildFirstName(context),
                    SizedBox(height: 31.v),
                    _buildLastName(context),
                    SizedBox(height: 31.v),
                    _buildEmail(context),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "msg_invalid_email_format".tr,
                        style: CustomTextStyles.bodySmallRed500,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildEmail1(context),
                    SizedBox(height: 32.v),
                    _buildLanguage(context),
                    SizedBox(height: 30.v),
                    _buildTwentyFour(context),
                    SizedBox(height: 31.v),
                    _buildSeven(context),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildVersionCounter(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child:
          BlocSelector<SingupPageBloc, SingupPageState, TextEditingController?>(
        selector: (state) => state.firstNameController,
        builder: (context, firstNameController) {
          return CustomTextFormField(
            controller: firstNameController,
            hintText: "lbl_samantha".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child:
          BlocSelector<SingupPageBloc, SingupPageState, TextEditingController?>(
        selector: (state) => state.lastNameController,
        builder: (context, lastNameController) {
          return CustomTextFormField(
            controller: lastNameController,
            hintText: "lbl_kalupahana".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child:
          BlocSelector<SingupPageBloc, SingupPageState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "msg_test_user_samplemailcom2".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            borderDecoration: TextFormFieldStyleHelper.underLineRed,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocBuilder<SingupPageBloc, SingupPageState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.emailController1,
            hintText: "lbl".tr,
            hintStyle: CustomTextStyles.bodySmall_1,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<SingupPageBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 24.v, 5.h, 10.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgRightIcon,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 49.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child:
          BlocSelector<SingupPageBloc, SingupPageState, TextEditingController?>(
        selector: (state) => state.languageController,
        builder: (context, languageController) {
          return CustomTextFormField(
            controller: languageController,
            hintText: "lbl".tr,
            hintStyle: CustomTextStyles.bodySmall_1,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return BlocSelector<SingupPageBloc, SingupPageState,
        TextEditingController?>(
      selector: (state) => state.dateOfBirthController,
      builder: (context, dateOfBirthController) {
        return CustomTextFormField(
          controller: dateOfBirthController,
          hintText: "lbl_1992_12_18".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Container(
      height: 49.v,
      width: 296.h,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgViewSchedule,
            height: 15.adaptSize,
            width: 15.adaptSize,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 5.h,
              bottom: 10.v,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_date_of_birth".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 6.v),
                _buildDateOfBirth(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomOutlinedButton(
      width: 103.h,
      text: "lbl_sign_in".tr,
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
      width: 180.h,
      text: "lbl_register".tr,
      buttonStyle: CustomButtonStyles.fillGray,
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSignIn(context),
          _buildRegister(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVersionCounter(BuildContext context) {
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
