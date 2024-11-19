import 'package:clculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:clculator/button.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  var userinput='';
  var result = '';
  @override
  Widget build(BuildContext context) {


    return  SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Align(
                    alignment: Alignment.bottomRight ,
                    child: Text(userinput.toString(), style: inputstyle,textAlign: TextAlign.end,)),
                Text(result.toString(), style: inputstyle,)
              ],
            )),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      MyButton(title: 'AC', color: grey,onPress: (){
                        userinput = "";
                        result ="";
                        setState(() {

                        });
                      },),
                      MyButton(title: '+/-', color: grey,onPress: (){

                      },),
                      MyButton(title: '%', color: grey,onPress: (){
                        userinput+='%';
                        setState(() {

                        });
                      },),
                      MyButton(title: '/', color: orane,onPress: (){
                        userinput+='/';
                        setState(() {

                        });
                      },),
              
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '7', color: grey,onPress: (){
                        userinput+='7';
                        setState(() {

                        });
                      },),
                      MyButton(title: '8', color: grey,onPress: (){
                        userinput+='8';
                        setState(() {

                        });
                      },),
                      MyButton(title: '9', color: grey,onPress: (){
                        userinput+='9';
                        setState(() {

                        });
                      },),
                      MyButton(title: 'x', color: orane,onPress: (){
                        userinput+='x';
                        setState(() {

                        });
                      },),
              
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '4', color: grey,onPress: (){
                        userinput+='4';
                        setState(() {

                        });
                      },),
                      MyButton(title: '5', color: grey,onPress: (){
                        userinput+='5';
                        setState(() {

                        });
                      },),
                      MyButton(title: '6', color: grey,onPress: (){
                        userinput+='6';
                        setState(() {

                        });
                      },),
                      MyButton(title: '-', color: orane,onPress: (){
                        userinput+='-';
                        setState(() {

                        });
                      },),
              
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '1', color: grey,onPress: (){
                        userinput+='1';
                        setState(() {

                        });
                      },),
                      MyButton(title: '2', color: grey,onPress: (){
                        userinput+='2';
                        setState(() {

                        });
                      },),
                      MyButton(title: '3', color: grey,onPress: (){
                        userinput+='3';
                        setState(() {

                        });
                      },),
                      MyButton(title: '+', color: orane,onPress: (){
                        userinput+='+';
                        setState(() {

                        });
                      },),
              
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '0', color: grey,onPress: (){
                        userinput+='0';
                        setState(() {

                        });
                      },),
                      MyButton(title: '.', color: grey,onPress: (){
                        userinput+='.';
                        setState(() {

                        });
                      },),
                      MyButton(title: 'Dell', color: grey,onPress: (){
                        userinput=userinput.substring(0,userinput.length-1);
                        setState(() {

                        });
                      },),
                      MyButton(title: '=', color: orane, onPress: (){
                        equalpress();
                        setState(() {

                        });
                      },),
              
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    ));
  }
  void equalpress() {
    try {
      // Convert `x` to `*` for compatibility with `math_expressions`
      String finalUserInput = userinput.replaceAll("x", "*");

      // Use math_expressions package to parse and evaluate the complete expression
      Parser p = Parser();
      Expression expression = p.parse(finalUserInput);
      ContextModel contextModel = ContextModel();

      // Calculate the result while respecting mathematical precedence
      double evalResult = expression.evaluate(EvaluationType.REAL, contextModel);

      // Update the result display
      setState(() {
        result = evalResult.toString();
      });
    } catch (e) {
      // Display error if the input expression is invalid
      setState(() {
        result = "Error";
      });
    }
  }


}
