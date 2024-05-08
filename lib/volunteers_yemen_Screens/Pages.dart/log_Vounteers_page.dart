import 'dart:convert';

import 'package:volunteers_yemen/App_packages/App_packages.dart';
import 'package:volunteers_yemen/controllers/Login_controllers/login_controller.dart';
import 'package:http/http.dart' as http;
import 'package:volunteers_yemen/controllers/Login_controllers/login_model.dart';
import 'package:volunteers_yemen/core/utils/image_constant.dart';
import 'package:volunteers_yemen/core/utils/size_utils.dart';
import 'package:volunteers_yemen/generated/l10n.dart';
import 'package:volunteers_yemen/routes/app_routes.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/widgets/custom_elevated_button.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/widgets/custom_floating_text_field.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/widgets/custom_image_view.dart';

class Log_Vounteers_Page extends StatefulWidget {
  const Log_Vounteers_Page({Key? key})
      : super(
          key: key,
        );

  @override
  Log_Vounteers_PageState createState() => Log_Vounteers_PageState();
}

class Log_Vounteers_PageState extends State<Log_Vounteers_Page>
    with AutomaticKeepAliveClientMixin<Log_Vounteers_Page> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  final LoginController controller = Get.put(LoginController());
  final _storage = FlutterSecureStorage();

  Future<dynamic> _login() async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/auth/jwt/create/'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'username': _username.text,
        'password': _password.text,
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(S.of(context).Loggedinsuccessfully)));

      final responseData = json.decode(response.body);
      await _storage.write(key: 'accessToken', value: responseData['access']);
      await _storage.write(key: 'refreshToken', value: responseData['refresh']);

      // For debugging: Check the tokens after successful login
      // _checkTokenStorage();

      // Navigate to UserInformationScreen with accessToken
      //     Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => startApp(),
      //       ),
      //     );
      //   } else {
      //     ScaffoldMessenger.of(context)
      //         .showSnackBar(SnackBar(content: Text(S.of(context).Failedtologin)));
      //     print(S.of(context).ok);
    }
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  _buildEightyThree(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        right: 24.h,
      ),
      child: Column(
        children: [
          CustomFloatingTextField(
            contentPadding: EdgeInsets.fromLTRB(21.h, -8.v, 21.h, 35.v),
            controller: _username,
            labelText: S.of(context).YourEmail,
            //   labelStyle: CustomTextStyles.bodySmall2(context),
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
            //    labelStyle: CustomTextStyles.bodySmall2(context),
            hintText: S.of(context).Password,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
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
              //_login();
              controller.login.value = LoginModule(
                  username: _username.text, password: _password.text);

              controller.Login();
            },
            text: S.of(context).Login,
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: InkWell(
                onTap: () {
                  //Navigator.pushNamed(context, AppRoutes.enterPasswordScreen);
                },
                child: Text(
                  S.of(context).ForgotPassword,
                  //    style: CustomTextStyles.bodySmallMontserratCyanA400(context),
                ),
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12.v,
                        bottom: 8.v,
                      ),
                      child: SizedBox(
                        width: 82.h,
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        S.of(context).orsigninusing,
                        //    style: CustomTextStyles.bodyMediumFigtreeBluegray400(
                        ///   context),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Opacity(
                      opacity: 1,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 12.v,
                          bottom: 8.v,
                        ),
                        child: SizedBox(
                          width: 82.h,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 59.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGooglePerspectiveMatte,
                  height: 43.v,
                  width: 41.h,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFacebookPerspectiveMatte,
                  height: 43.v,
                  width: 41.h,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTwitterPerspectiveMatte,
                  height: 43.v,
                  width: 41.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 36.v),
          Row(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).Donthaveaccount,
                //  style: CustomTextStyles.bodySmallMontserratGray1006d(context),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  S.of(context).Register,
                  //   style: CustomTextStyles.bodySmallMontserratCyanA400(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
