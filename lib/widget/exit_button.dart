import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/screen/appColors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExitButton extends StatelessWidget {
  const ExitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 150,
        width: 60,
        decoration: BoxDecoration(
            color: AppColors.exitButtonColors,
            borderRadius: BorderRadius.circular(35)),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 50,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
