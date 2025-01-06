import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key, required this.onPressed, required this.buttonTitle});
  final String buttonTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          buttonTitle,
          style: const TextStyle(
              fontWeight: FontWeight.w700, color: ColorsConstants.primaryColor),
        ));
  }
}
