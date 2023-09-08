import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      this.hint,
      this.lable,
      this.validate,
      this.ispassword = false,
      this.icon,
      this.suffixIconOnPressed});
  final TextEditingController controller;
  final String? hint;
  final String? lable;
  final String? Function(String?)? validate;
  final bool ispassword;
  final IconData? icon;
  final VoidCallback? suffixIconOnPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      controller: controller,
      obscureText: ispassword,
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal:16.w ),
        hintText: hint,
        labelText: lable,
        suffixIcon: IconButton(
          onPressed: suffixIconOnPressed,
          icon: Icon(
            icon,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
