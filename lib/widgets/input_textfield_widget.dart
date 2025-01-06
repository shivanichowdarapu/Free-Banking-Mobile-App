import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget({
    super.key,
    required this.hintText,
     this.textEditingController,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.redonly = false,
    this.validator,
    this.prefixurl,
    this.suffixurl,
    this.inputFormatters,
    this.maxLines = 1,
    this.height,
    this.width,   Function(dynamic value)? onChanged,
  });
  final String hintText;
  final TextEditingController? textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? prefixurl;
  final String? suffixurl;
  final String? Function(String?)? validator;
  final bool? redonly;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        maxLines: maxLines,
        controller: textEditingController,
        keyboardType: keyboardType,
        obscureText: obscureText,
        readOnly: redonly ?? false,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorsConstants.inputTextfillColor,
          hintText: hintText,
          prefixIcon: prefixurl != null ? Image.asset(prefixurl!) : null,
          suffixIcon: suffixurl != null ? Image.asset(suffixurl!) : null,
          border: InputBorder.none,
          hintStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(165, 166, 182, 1))
        ),
        validator: validator,
      ),
    );
  }
}






