import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const splashDuration=3;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: LogoWidget(height: 125.94,width: 178, url: ImagesConstants.logo,)),
        ],
      ),
    );
  }
  @override
  void initState() {
    splashduration();
    // TODO: implement initState
    super.initState();
  }
  splashduration()async
  {
    await Future.delayed(const Duration(seconds: splashDuration));
    NavigationServices().navigateTo(RoutesConstants.onboarding1Screen);
  }
}