import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.isPassword = false,
  }) : super(key: key);

  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        obscureText: isPassword ? true : false,
        keyboardType:
            isPassword ? TextInputType.text : TextInputType.emailAddress,
        onSaved: (newValue) {},
        onChanged: (value) {},
        decoration: InputDecoration(
          suffixIcon: suffixIcon ?? const Icon(Icons.device_unknown),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: labelText ?? '',
          labelStyle: const TextStyle(color: Colors.white),
          hintText: hintText ?? '',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
