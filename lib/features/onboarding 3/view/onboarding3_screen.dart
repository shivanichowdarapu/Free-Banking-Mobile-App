import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class Onboarding3Screen extends StatefulWidget {
  const Onboarding3Screen({ Key? key }) : super(key: key);

  @override
  _Onboarding3ScreenState createState() => _Onboarding3ScreenState();
}

class _Onboarding3ScreenState extends State<Onboarding3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 190),
          child: Column(
            children: [
               const LogoWidget(width: 335,height: 248.53, url: ImagesConstants.onboarding3,),
               const SizedBox(height: 20,),
               const LogoWidget(width: 45,height: 6, url: ImagesConstants.slide3,),
               const SizedBox(height: 40,),
               TextWidget(textdata: "Paying for Everything is", size: 26, fontweight: FontWeight.w600, textcolor: ColorsConstants.titlecolor),
              TextWidget(textdata: "Easy and Convenient", size: 26, fontweight: FontWeight.w600, textcolor: ColorsConstants.titlecolor),
              TextWidget(textdata: "Built-in Fingerprint, face recognition", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
               TextWidget(textdata: "and more, keeping you completely safe", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
              const SizedBox(height: 50,),
              ButtonWidget(buttonTitle: "Next", onPressed: (){NavigationServices().navigateTo(RoutesConstants.signInScreen);},buttonHeight: 56,buttonWidth: 335,)
            ],
          ),
        ),
      ),
    );
  }
}