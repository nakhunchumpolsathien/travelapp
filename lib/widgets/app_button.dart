import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;


  AppButtons({Key? key,
    this.isIcon=false,
    this.text='hi',
    this.icon,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
    child: isIcon==false?Center(child: AppText(text: text!, color: color,)):Center(child: Icon(icon, color: color,),));
  }
}
