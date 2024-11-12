import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/screen/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context) => CalculatorProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: const CalculatorScreen(),
      theme: ThemeData(
      ),
    ),
    );
  }
}
