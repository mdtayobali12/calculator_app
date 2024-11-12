import 'package:calculator_app/screen/appColors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30 , horizontal:15),
      child: TextField(
        controller:controller,
        decoration: const InputDecoration(
          border:InputBorder.none,
          fillColor:AppColors.screeColors,filled: true,
        ),
        readOnly: true,
        autofocus: true,
        showCursor:true,
        style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w600,
          color: Colors.white
        ),
      ),
    );
  }
}
