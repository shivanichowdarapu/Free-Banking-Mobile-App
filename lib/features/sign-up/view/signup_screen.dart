import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/input_textfield_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_button_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 149),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(textdata: "Sign Up", size: 32, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor,),
                  const SizedBox(height: 30,),
                  const TextWidget(textdata: "Full Name", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                  const SizedBox(height: 10,),
                  const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.email, ),
                  const TextWidget(textdata: "Phone Number", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                  const SizedBox(height: 10,),
                  const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.phone, ),
                  const SizedBox(height: 20,),
                  const SizedBox(height: 20,),
                  const TextWidget(textdata: "Email Address", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                  const SizedBox(height: 10,),
                  const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.email, ),
                  const SizedBox(height: 20,),
                  const TextWidget(textdata: "Password", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                  const SizedBox(height: 10,),
                  const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.lock,suffixurl: ImagesConstants.eye,),
                  const SizedBox(height: 50,),
                  Center(child: ButtonWidget(buttonTitle: "Sign Up", onPressed: (){},buttonHeight: 56,buttonWidth: 335)),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(textdata: "Already have an account", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
                      TextButtonWidget(buttonTitle: "Sign In", onPressed: (){NavigationServices().replaceAll(RoutesConstants.signInScreen);}, )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}