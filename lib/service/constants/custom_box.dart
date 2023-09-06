import 'package:flutter/material.dart';
import 'colors.dart';
import 'fonts.dart';

class CustomBox extends StatelessWidget{
  final double x;
  final double y;
  final Color? color;
  final String text;
  final bool isBorder;
  const CustomBox({super.key,this.color,this.isBorder = false, required this.text,required this.x,required this.y});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * x,
      width: MediaQuery.of(context).size.width * y,
      decoration: BoxDecoration(
        color: isBorder? CustomColors.colors12_24_35_1 : CustomColors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color:CustomColors.colors12_24_35_1,width: 2,),
      ),
      child: Text(
        text,style: CustomStyle.textStyle(
          size: 20,fontWeight: FontWeight.w500,
          color: isBorder? CustomColors.white : CustomColors.colors12_24_35_1),),
    );
  }
}

