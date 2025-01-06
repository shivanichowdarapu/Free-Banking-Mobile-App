import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class Onboarding2Screen extends StatefulWidget {
  const Onboarding2Screen({ Key? key }) : super(key: key);

  @override
  _Onboarding2ScreenState createState() => _Onboarding2ScreenState();
}

class _Onboarding2ScreenState extends State<Onboarding2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 190),
          child: Column(
            children: [
               const LogoWidget(width: 335,height: 248.53, url: ImagesConstants.onboarding2,),
               const SizedBox(height: 20,),
               const LogoWidget(width: 45,height: 6, url: ImagesConstants.slide2,),
               const SizedBox(height: 40,),
               TextWidget(textdata: "The most Secure", size: 26, fontweight: FontWeight.w600, textcolor: ColorsConstants.titlecolor),
               TextWidget(textdata: "Platform for Customer", size: 26, fontweight: FontWeight.w600, textcolor: ColorsConstants.titlecolor),
               SizedBox(height: 15,),
               TextWidget(textdata: "Built-in Fingerprint, face recognition", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
               TextWidget(textdata: "and more, keeping you completely safe", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
              const SizedBox(height: 50,),
              ButtonWidget(buttonTitle: "Next",
               onPressed: ()
               {
                NavigationServices().navigateTo(RoutesConstants.onboarding3Screen);
               },buttonHeight: 56,buttonWidth: 335,)
            ],
          ),
        ),
      ),
    );
  }
}