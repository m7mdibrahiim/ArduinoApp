import 'package:flutter/material.dart';

typedef MyValidator = String? Function(String?);

class CustomFormField extends StatelessWidget {
  CustomFormField({
    super.key,
    required this.hintname,
    required this.labelname,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    required this.validator,
    required this.controller,
  });
  String hintname;
  String labelname;
  bool isPassword;
  TextInputType keyboardType;
  MyValidator validator;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        hintText: hintname,
        labelText: labelname,
      ),
    );
  }
}
