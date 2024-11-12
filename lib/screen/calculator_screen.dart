import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/screen/appColors/app_colors.dart';
import 'package:calculator_app/widget/button_list.dart';
import 'package:calculator_app/widget/custom_text_field.dart';
import 'package:calculator_app/widget/exit_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    return Consumer<CalculatorProvider>(
      builder: (context,Provider,_) {
        return Scaffold(
          backgroundColor:AppColors.exitButtonColors,
          appBar: AppBar(
            backgroundColor: AppColors.screeColors,
            foregroundColor: Colors.white,
            title: const Text(
              "Calculator",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(controller:Provider.compController,),
              const Spacer(),
              Container(
                padding: padding,
                height: screenHeight * 0.6,
                width: double.infinity,
                decoration: _buildBoxDecoration(),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4,
                          (index) => ButtonList.buttonList[index],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4,
                          (index) => ButtonList.buttonList[index + 4],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4,
                          (index) => ButtonList.buttonList[index + 8],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    3,
                                    (index) => ButtonList.buttonList[index + 12],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    3,
                                    (index) => ButtonList.buttonList[index + 15],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const ExitButton()
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return const BoxDecoration(
      color: AppColors.screeColors,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    );
  }
}
