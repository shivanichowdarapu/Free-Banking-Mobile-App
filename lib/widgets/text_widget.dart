import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
const TextWidget({super.key, required this.textdata,required this.size,required this.fontweight,this.textalign, this.textcolor});
final String textdata;
final double size;
final FontWeight fontweight;
final TextAlign? textalign;
final Color? textcolor;
  @override
  Widget build(BuildContext context){
    return Text(
      textdata,
      style: TextStyle(fontSize: size,fontWeight: fontweight,color: textcolor),
      textAlign: textalign,);
  }
}