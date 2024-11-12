import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
  final compController = TextEditingController();

  setValue(String value)
  {
    String str = compController.text;
    switch(value){
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = str.substring(0,str.length);
        break;
      case "X":
         compController.text += "*";
         break;
      case "=":
        compute();
           break;
      default:
           compController.text +=value;
    }
  }
  compute(){
    String text = compController.text;
    compController.text = text.interpret().toString();
  }

@override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}