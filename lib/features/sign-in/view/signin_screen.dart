import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/input_textfield_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_button_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({ Key? key }) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
                  const TextWidget(textdata: "Sign In", size: 32, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor,),
                  const SizedBox(height: 30,),
                  const TextWidget(textdata: "Email Address", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                  const SizedBox(height: 10,),
                  const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.email, ),
                  const SizedBox(height: 20,),
                  const TextWidget(textdata: "Password", size: 14, fontweight:FontWeight.w400 , textcolor: ColorsConstants.textcolor),
                  const SizedBox(height: 10,),
                  const InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.lock,suffixurl: ImagesConstants.eye,),
                  const SizedBox(height: 50,),
                  Center(child: ButtonWidget(buttonTitle: "Sign In", onPressed: (){NavigationServices().navigateTo(RoutesConstants.homeScreen);},buttonHeight: 56,buttonWidth: 335)),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(textdata: "I'm a new user.", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
                      TextButtonWidget(buttonTitle: "Sign Up", onPressed: (){NavigationServices().navigateTo(RoutesConstants.signUpScreen);}, )
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