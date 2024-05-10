import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:volunteers_yemen/components/controllers/Login_controllers/login_controller.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:volunteers_yemen/components/controllers/Login_controllers/login_model.dart';
import 'package:volunteers_yemen/core/utils/image_constant.dart';
import 'package:volunteers_yemen/core/utils/size_utils.dart';
import 'package:volunteers_yemen/core/widgets/custom_text_style.dart';
import 'package:volunteers_yemen/generated/l10n.dart';
import 'package:volunteers_yemen/routes/app_routes.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/widgets/custom_elevated_button.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/widgets/custom_floating_text_field.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class Log_Organization_Page extends StatefulWidget {
  @override
  Log_Organization_PageState createState() => Log_Organization_PageState();
}

class Log_Organization_PageState extends State<Log_Organization_Page> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  final LoginController controller = Get.put(LoginController());
  bool _isPasswordVisible = true; // Track whether the password is hidden or not

  // Method to handle tap on the screen
  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Wrap the entire screen in GestureDetector
      onTap: () {
        // Hide password when tapping anywhere on the screen
        if (!_isPasswordVisible) {
          _togglePasswordVisibility();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  _buildSeventySix(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySix(BuildContext context) {
    bool _obscureText = false;
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomFloatingTextField(
            obscureText: _obscureText,
            contentPadding: EdgeInsets.fromLTRB(21.h, -8.v, 21.h, 35.v),
            controller: _username,
            labelText: S.of(context).YourEmail,
            labelStyle: CustomTextStyles.bodySmall2(context),
            hintText: S.of(context).YourEmail,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 14.v,
                width: 18.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 46.v,
            ),
          ),
          SizedBox(height: 20.v),
          CustomFloatingTextField(
            contentPadding: EdgeInsets.fromLTRB(21.h, -8.v, 21.h, 35.v),
            controller: _password,
            labelText: S.of(context).Password,
            labelStyle: CustomTextStyles.bodySmall2(context),
            hintText: S.of(context).Password,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                height: 23.v,
                width: 18.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            onPressed: () {
              controller.login.value = LoginModule(
                username: _username.text,
                password: _password.text,
              );

              controller.Login();
            },
            text: S.of(context).Login,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: InkWell(
              onTap: () {
                // Navigator.pushNamed(context, AppRoutes.enterPasswordScreen);
              },
              child: Text(
                S.of(context).ForgotPassword,
                style: CustomTextStyles.bodySmallMontserratCyanA400(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
