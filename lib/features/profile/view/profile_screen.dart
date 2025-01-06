import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 74,left: 25,right: 25),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationServices().goBack();
                    },
                    child: LogoWidget(url: ImagesConstants.back)),
                    TextWidget(textdata: "Profile", size: 20, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                    GestureDetector(
                      onTap: () {
                        NavigationServices().navigateTo(RoutesConstants.editprofilescreen);
                      },
                      child: LogoWidget(url: ImagesConstants.editcard)),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  LogoWidget(url: ImagesConstants.profile),
                  SizedBox(width: 19,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [                      
                      TextWidget(textdata: "Tanya Myroniuk", size: 18, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                      SizedBox(height: 6,),
                      TextWidget(textdata: "Senior Designer,", size: 14, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  LogoWidget(url: ImagesConstants.user),
                  SizedBox(width: 15,),
                  TextWidget(textdata: "Personal Information", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.titlecolor),
                  Spacer(),
                  LogoWidget(url: ImagesConstants.goto),
                ],
              ),
              SizedBox(height: 10,),
              Divider(color: const Color.fromARGB(42, 164, 157, 157)),
              SizedBox(height: 10,),
              Row(
                children: [
                  LogoWidget(url: ImagesConstants.card),
                  SizedBox(width: 15,),
                  TextWidget(textdata: "Payment Preferences", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.titlecolor),
                  Spacer(),
                  LogoWidget(url: ImagesConstants.goto),
                ],
              ),
              SizedBox(height: 10,),
              Divider(color: const Color.fromARGB(42, 164, 157, 157),),
              SizedBox(height: 10,),
              Row(
                children: [
                  LogoWidget(url: ImagesConstants.editcard),
                  SizedBox(width: 15,),
                  TextWidget(textdata: "Banks and Cards", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.titlecolor),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      NavigationServices().navigateTo(RoutesConstants.allcardsscreen);
                    },
                    child: LogoWidget(url: ImagesConstants.goto)),
                ],
              ),
              SizedBox(height: 10,),
              Divider(color: const Color.fromARGB(42, 164, 157, 157)),
              SizedBox(height: 10,),
              Row(
                children: [
                  LogoWidget(url: ImagesConstants.notify),
                  SizedBox(width: 15,),
                  TextWidget(textdata: "Notifications", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.titlecolor),
                  Spacer(),
                  LogoWidget(url: ImagesConstants.number),
                ],
              ),
              SizedBox(height: 10,),
              Divider(color: const Color.fromARGB(42, 164, 157, 157)),
              SizedBox(height: 10,),
              Row(
                children: [
                  LogoWidget(url: ImagesConstants.message),
                  SizedBox(width: 15,),
                  TextWidget(textdata: "Message Center", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.titlecolor),
                  Spacer(),
                  LogoWidget(url: ImagesConstants.goto),
                ],
              ),
              SizedBox(height: 10,),
              Divider(color: const Color.fromARGB(42, 164, 157, 157)),
              SizedBox(height: 10,),
              Row(
                children: [
                  LogoWidget(url: ImagesConstants.location),
                  SizedBox(width: 15,),
                  TextWidget(textdata: "Address", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.titlecolor),
                  Spacer(),
                  LogoWidget(url: ImagesConstants.goto),
                ],
              ),
              SizedBox(height: 10,),
              Divider(color: const Color.fromARGB(42, 164, 157, 157)),
              SizedBox(height: 10,),
              Row(
                children: [
                  LogoWidget(url: ImagesConstants.settings),
                  SizedBox(width: 15,),
                  TextWidget(textdata: "Settings", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.titlecolor),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      NavigationServices().replaceAll(RoutesConstants.settingsScreen);
                    },
                    child: LogoWidget(url: ImagesConstants.goto)),
                ],
              ),
              SizedBox(height: 10,),
              Divider(color: const Color.fromARGB(42, 164, 157, 157)),
            ],
          ),
        ),
      ),
    );
  }
}