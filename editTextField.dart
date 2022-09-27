import 'package:flutter/material.dart';

class EditTextField extends StatelessWidget {
  const EditTextField({
    Key? key,
    this.height,
    this.visibility,
    this.isHiddenText,
    this.controller,
    this.initialValue,
    this.hintText,
    this.etLeftMarginBox,
    this.etRightMarginBox,
    this.etTopMarginBox,
    this.etBottomMarginBox,
    this.etLeftMarginText,
    this.etRightMarginText,
    this.inputDecoration,
    this.keyboardType,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.textInputAction,
    this.readOnly,
  });

  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;

  final TextInputType? keyboardType;
  final InputDecoration? inputDecoration;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;

  final String? initialValue;
  final String? hintText;

  final double? height;
  final double? etLeftMarginBox;
  final double? etRightMarginBox;
  final double? etTopMarginBox;
  final double? etBottomMarginBox;
  final double? etLeftMarginText;
  final double? etRightMarginText;

  final bool? isHiddenText;
  final bool? visibility;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibility ?? true,
      child: Container(
        height: height ?? 50,
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.fromLTRB(etLeftMarginBox!, etTopMarginBox!,
            etRightMarginBox!, etBottomMarginBox!),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: EdgeInsets.only(
              left: etLeftMarginText!, right: etRightMarginText!),
          child: TextFormField(
            readOnly: readOnly ?? false,
            controller: controller,
            initialValue: initialValue,
            obscureText: isHiddenText ?? false,
            textAlign: TextAlign.left,
            keyboardType: keyboardType ?? TextInputType.text,
            onChanged: onChanged,
            cursorColor: Colors.black38,
            style: TextStyle(color: Colors.black),
            validator: validator,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[400]),
              prefix: prefix,
              prefixIcon: prefixIcon,
              suffix: suffix,
              suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ),
    );
  }
}
