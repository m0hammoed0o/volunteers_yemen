import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:volunteers_yemen/core/utils/size_utils.dart';

import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget(
                context)) // هنا تحتاج إلى إضافة القوسين ()
        : buildElevatedButtonWidget(context); // وهنا أيضًا
  }

  Widget buildElevatedButtonWidget(BuildContext context) {
    return Container(
      height: this.height ?? 48.v,
      width: this.width ?? double.maxFinite,
      margin: margin,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.h)),
      child: GradientButton(
        radius: 7,
        onPressed: () {},
        text: text,
        // textStyle: buttonTextStyle ??
        //     CustomTextStyles.titleLargePrimaryContainer(context),
        colors: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.onPrimary
        ],
        height: this.height ?? 48.v,
        width: this.width ?? double.maxFinite,
        gradientDirection: GradientDirection.topToBottom,
      ),
    );
  }
}
