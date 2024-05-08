import 'package:flutter/material.dart';
import 'package:volunteers_yemen/core/utils/size_utils.dart';

class CustomFloatingTextField extends StatefulWidget {
  CustomFloatingTextField({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = false,
    this.validator,
    this.onChanged,
  }) : super(
          key: key,
        );

  final Alignment? alignment;
  final double? width;
  final TextEditingController? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final TextStyle? labelStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  @override
  _CustomFloatingTextFieldState createState() =>
      _CustomFloatingTextFieldState();
}

class _CustomFloatingTextFieldState extends State<CustomFloatingTextField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: floatingTextFieldWidget(context),
          )
        : floatingTextFieldWidget(context);
  }

  Widget floatingTextFieldWidget(BuildContext context) => SizedBox(
        width: widget.width ?? double.maxFinite,
        child: TextFormField(
          onChanged: widget.onChanged,
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: widget.controller,
          focusNode: widget.focusNode ?? FocusNode(),
          autofocus: widget.autofocus!,
          // style: widget.textStyle ?? CustomTextStyles.bodySmall2(context),
          obscureText: _obscureText,
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          maxLines: widget.maxLines ?? 1,
          decoration: decoration,
          validator: widget.validator,
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: widget.hintText ?? "",
        //    hintStyle: widget.hintStyle ?? CustomTextStyles.bodySmall2(context),
        labelText: widget.labelText ?? "",
        labelStyle: widget.labelStyle,
        prefixIcon: widget.prefix,
        prefixIconConstraints: widget.prefixConstraints,
        // suffixIcon: GestureDetector(
        //   onTap: () {
        //     setState(() {
        //       _obscureText = !_obscureText;
        //     });
        //   },
        //   child: Icon(
        //     _obscureText ? Icons.visibility : Icons.visibility_off,
        //   ),
        // ),
        suffixIconConstraints: widget.suffixConstraints,
        isDense: true,
        contentPadding: widget.contentPadding ??
            EdgeInsets.fromLTRB(-8.h, -8.v, -8.h, 33.v),
        fillColor: widget.fillColor,
        filled: widget.filled,
        border: widget.borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 1,
              ),
            ),
        enabledBorder: widget.borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 2,
              ),
            ),
        focusedBorder: widget.borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 1,
              ),
            ),
      );
}
