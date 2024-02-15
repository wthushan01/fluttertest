import 'bloc/login_page_bloc.dart';
import 'models/login_page_model.dart';
import 'package:flutter/material.dart';
import 'package:thushan_weerarathne_s_application/core/app_export.dart';
import 'package:thushan_weerarathne_s_application/core/utils/validation_functions.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_elevated_button.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_outlined_button.dart';
import 'package:thushan_weerarathne_s_application/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageBloc>(
      create: (context) => LoginPageBloc(LoginPageState(
        loginPageModelObj: LoginPageModel(),
      ))
        ..add(LoginPageInitialEvent()),
      child: LoginPageScreen(),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 18.v),
                    Text(
                      "lbl_welcome".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 31.v),
                    BlocSelector<LoginPageBloc, LoginPageState,
                        TextEditingController?>(
                      selector: (state) => state.emailController,
                      builder: (context, emailController) {
                        return CustomTextFormField(
                          controller: emailController,
                          hintText: "msg_test_user_samplemail_com".tr,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                        );
                      },
                    ),
                    SizedBox(height: 31.v),
                    _buildLanguageEditText(context),
                    SizedBox(height: 30.v),
                    _buildLoginButtonsRow(context),
                    SizedBox(height: 32.v),
                    Text(
                      "msg_forgot_username".tr,
                      style: CustomTextStyles.labelLargeIndigo900,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "lbl_reset_here".tr,
                      style: CustomTextStyles.labelLarge_1.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildEighteenRow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageEditText(BuildContext context) {
    return BlocBuilder<LoginPageBloc, LoginPageState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.languageEditTextController,
          hintText: "lbl".tr,
          hintStyle: CustomTextStyles.bodySmall_1,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
            onTap: () {
              context.read<LoginPageBloc>().add(
                  ChangePasswordVisibilityEvent(value: !state.isShowPassword));
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
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLoginButtonsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          width: 180.h,
          text: "lbl_login".tr,
          margin: EdgeInsets.symmetric(vertical: 1.v),
        ),
        CustomOutlinedButton(
          width: 103.h,
          text: "lbl_sign_up".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEighteenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 5.h,
        bottom: 3.v,
      ),
      child: Row(
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
          Spacer(),
          Text(
            "lbl_version_2_3_0".tr,
            style: theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
