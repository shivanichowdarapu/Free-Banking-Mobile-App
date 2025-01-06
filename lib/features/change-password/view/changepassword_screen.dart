import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/input_textfield_widget.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class ChangepasswordScreen extends StatefulWidget {
  const ChangepasswordScreen({ Key? key }) : super(key: key);

  @override
  _ChangepasswordScreenState createState() => _ChangepasswordScreenState();
}

class _ChangepasswordScreenState extends State<ChangepasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 74,left: 25,right: 25),
        child: Container(
          child: Column(
            children: [
              Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); 
                      },
                      child: LogoWidget(url: ImagesConstants.back),
                    ),
                    SizedBox(width: 10),
                    TextWidget(textdata: "Change Password",size: 20,fontweight: FontWeight.w500,textcolor: ColorsConstants.titlecolor,),
                    
                  ],
                ),
                SizedBox(height: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(textdata: " Current Password", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                        const SizedBox(height: 10,),
                        const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.lock,),
                        const SizedBox(height: 20,),
                        const TextWidget(textdata: "New Password", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                        const SizedBox(height: 10,),
                        const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.lock,suffixurl: ImagesConstants.eye,),
                        const SizedBox(height: 20,),
                        const TextWidget(textdata: "Confirm New Password", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                        const SizedBox(height: 10,),
                        const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.lock),
                        TextWidget(textdata: "Both Passwords Must Match", size: 12, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
                        const SizedBox(height: 60,),
                        ButtonWidget(buttonTitle: "Change Password", onPressed: (){},buttonHeight: 56,buttonWidth: 335,)
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}