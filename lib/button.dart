import 'package:flutter/material.dart';
import 'package:clculator/constant.dart';


class MyButton extends StatelessWidget {
  final String title;
  Color color;
  final VoidCallback onPress;
  MyButton({super.key, required this.title,
    required this.color,
    required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height:  70,
            width:  70,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child:
            Center(child: Text( title , style: style,)),
          ),
        ),
      ),
    );
  }
}

