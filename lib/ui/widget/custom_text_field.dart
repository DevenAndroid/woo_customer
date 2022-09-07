import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:flutter/services.dart';

import '../../res/theme/theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final Widget? prefixChildIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const CustomTextField(
      {super.key,
      this.obscureText = false,
      required this.controller,
      this.inputFormatters,
      this.validator,
      this.hintText,
      this.labelText,
      this.prefixChildIcon,
      this.suffixIcon,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.continerBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            offset: const Offset(0, 0),
            blurRadius: 6,
          ),
        ],
        border:
            Border(bottom: BorderSide(width: 1.5, color: Colors.grey.shade300)),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText!,
        validator: validator,
        // FilteringTextInputFormatter.digitsOnly
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
            errorStyle: TextStyle(
              color: Colors.red,
            ),
            contentPadding: const EdgeInsets.all(10),
            fillColor: AppTheme.continerBackgroundColor,
            filled: true,
            hintText: hintText,
            labelStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: MediaQuery.of(context).size.width * 0.040,
            ),
            labelText: labelText,
            prefixIcon: Container(
              width: 30,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.grey.shade300)),
              ),
              child: prefixChildIcon,
            ),
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                borderSide: BorderSide.none),
            hintStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: MediaQuery.of(context).size.width * 0.040,
            ),
            focusColor: AppTheme.primaryColor,
            hoverColor: AppTheme.primaryColor),
        keyboardType: keyboardType,
      ),
    );
  }
}
