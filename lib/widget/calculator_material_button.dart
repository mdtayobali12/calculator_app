import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/screen/appColors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorMaterialButton extends StatelessWidget {
  const CalculatorMaterialButton({
    super.key,
    required this.label,
    this.textColor = Colors.white,
  });

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(label),
      child: Expanded(
        child: Material(
          elevation: 4,
          color: AppColors.screeColors,
          borderRadius: BorderRadius.circular(50),
          child: CircleAvatar(
            backgroundColor: AppColors.buttonColors,
            radius: 30,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
