import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class Onboarding1Screen extends StatefulWidget {
  const Onboarding1Screen({Key? key}) : super(key: key);

  @override
  _Onboarding1ScreenState createState() => _Onboarding1ScreenState();
}

class _Onboarding1ScreenState extends State<Onboarding1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 190),
          child: Column(
            children: [
              const LogoWidget(width: 335,height: 248.53,url: ImagesConstants.onboarding1,),
              const SizedBox(height: 20,),
              const LogoWidget(width: 45,height: 6,url: ImagesConstants.slide1,),
              const SizedBox(height: 40,),
              TextWidget(textdata: "Fastest Payment in", size: 26, fontweight: FontWeight.w600, textcolor: ColorsConstants.titlecolor),
              TextWidget(textdata: "the world", size: 26, fontweight: FontWeight.w600, textcolor: ColorsConstants.titlecolor),
              TextWidget(textdata: "Integrate multiple payment methoods", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
              TextWidget(textdata: "to help you up the process quickly", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
              const SizedBox(height: 50,),
              ButtonWidget(
                buttonTitle: "Next",
                onPressed: () {
                  NavigationServices()
                      .navigateTo(RoutesConstants.onboarding2Screen);
                },
                buttonHeight: 56,
                buttonWidth: 335,
              )
            ],
          ),
        ),
      ),
    );
  }
}
