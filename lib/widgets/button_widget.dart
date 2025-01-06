import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.buttonTitle,
       required this.onPressed,
      this.buttonBgColor = ColorsConstants.primaryColor,
      this.buttonWidth = double.infinity,
      this.buttonHeight=double.infinity,
      this.buttonTextColor = Colors.white});
  final String buttonTitle;
  final void Function() onPressed;
  final Color buttonBgColor;
  final double buttonWidth;
  final double buttonHeight;
  final Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: buttonWidth,
        height: buttonHeight,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(buttonWidth, buttonHeight),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            backgroundColor: buttonBgColor,
          ),
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 16, color: buttonTextColor,fontWeight: FontWeight.w600),
          ),
        ));
  }
}
