import 'package:flutter/material.dart';
import 'package:volunteers_yemen/core/utils/image_constant.dart';
import 'package:volunteers_yemen/core/utils/size_utils.dart';
import 'package:volunteers_yemen/generated/l10n.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/Pages.dart/log_Organization_page.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/Pages.dart/log_Vounteers_page.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/widgets/custom_TabBarlogin.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/widgets/custom_image_view.dart';

class LogInPageTabContainerScreen extends StatefulWidget {
  const LogInPageTabContainerScreen({Key? key}) : super(key: key);

  @override
  LogInPageTabContainerScreenState createState() =>
      LogInPageTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class LogInPageTabContainerScreenState
    extends State<LogInPageTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            _buildSeventyFive(context),
            SizedBox(height: 5.v),
            TabBarLogin(tabviewController: tabviewController, context: context),
            SizedBox(
                height: 550.v,
                child: TabBarView(
                    controller: tabviewController,
                    children: [Log_Vounteers_Page(), Log_Organization_Page()]))
          ])),
    )));
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    Brightness currentBrightness = Theme.of(context).brightness;
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr, // تحديد اتجاه النصوص
        children: [
          Container(
            height: 222.v,
            width: 153.h,
            margin: EdgeInsets.only(top: 40.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUntitled2,
                  height: 261.v,
                  width: 207.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 70.v),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.8,
                  child: CustomImageView(
                    imagePath: currentBrightness == Brightness.light
                        ? ImageConstant.imgEllipse14
                        : ImageConstant.imgEllipse15,
                    height: 216.v,
                    width: 205.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
