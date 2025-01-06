import 'package:flutter/material.dart';
//Create the logo widget
class LogoWidget extends StatelessWidget {
const LogoWidget({super.key, this.width , this.height ,required this.url});
  final double? width;
  final double? height;
  final url;

  // default width and height is 200 and 200 respectively

  @override
  Widget build(BuildContext context){
    return Image.asset(
      url,
      width: width,
      height:height,
    );
  }
}