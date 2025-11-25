import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.suffixIcon,
    this.onChanged,
  });

  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscureText;

  @override
  void initState() {
    super.initState();
    isObscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isObscureText,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      onChanged: widget.onChanged,
      style: AppTextStyles.text16W700.copyWith(color: AppColor.black),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyles.text13W700.copyWith(color: AppColor.gray400),
        filled: true,
        fillColor: AppColor.gray50,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(AppColor.green1_500),
        errorBorder: buildBorder(Colors.red),
        focusedErrorBorder: buildBorder(Colors.red),
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                icon: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColor.gray400,
                ),
              )
            : widget.suffixIcon,
      ),
    );
  }

  OutlineInputBorder buildBorder([Color color = AppColor.gray100]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: BorderSide(color: color),
    );
  }
}
