import 'package:calculator_app/screen/appColors/app_colors.dart';
import 'package:calculator_app/widget/calculator_material_button.dart';
import 'package:flutter/material.dart';
class ButtonList{
 static List<Widget> buttonList = [
    const CalculatorMaterialButton(
      label: 'C',
      textColor: AppColors.exitButtonColors,
    ),
    const CalculatorMaterialButton(
      label: '/',
      textColor: AppColors.exitButtonColors,
    ),
    const CalculatorMaterialButton(
      label: 'X',
      textColor: AppColors.exitButtonColors,
    ),
    const CalculatorMaterialButton(
      label: 'AC',
      textColor: AppColors.exitButtonColors,
    ),
   // ---------------------------------------------------
   const CalculatorMaterialButton(
     label: '7',
   ),
   const CalculatorMaterialButton(
     label: '8',

   ),
   const CalculatorMaterialButton(
     label: '9',

   ),
   const CalculatorMaterialButton(
     label: '+',
     textColor: AppColors.exitButtonColors,
   ),
   //--------------------------------------------------------
   const CalculatorMaterialButton(
     label: '4',

   ),
   const CalculatorMaterialButton(
     label: '5',

   ),
   const CalculatorMaterialButton(
     label: '6',
   ),
   const CalculatorMaterialButton(
     label: '-',
     textColor: AppColors.exitButtonColors,
   ),
   //----------------------------------------------------------
   const CalculatorMaterialButton(
     label: '1',
   ),
   const CalculatorMaterialButton(
     label: '2',
   ),
   const CalculatorMaterialButton(
     label: '3',
   ),

   //---------------------------------------------------------------
   const CalculatorMaterialButton(
     label: '%',
   ),
   const CalculatorMaterialButton(
     label: '0',
   ),
   const CalculatorMaterialButton(
     label: '.',
   ),

  ];
}