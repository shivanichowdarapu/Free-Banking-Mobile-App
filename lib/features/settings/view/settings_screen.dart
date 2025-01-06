import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({ Key? key }) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String selectedLanguage = "English";
  bool isSwitched = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 74,left: 25,right: 25),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationServices().replaceAll(RoutesConstants.homeScreen);
                    },
                    child: LogoWidget(url: ImagesConstants.back)),
                  TextWidget(textdata: "Settings", size: 20, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                  GestureDetector(
                    onTap: () {
                      NavigationServices().replaceAll(RoutesConstants.signInScreen);
                    },
                    child: LogoWidget(url: ImagesConstants.logout)),
                ],
              ),
              SizedBox(height: 30,),
              TextWidget(textdata: "General", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
              SizedBox(height: 25,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextWidget(textdata: "Language", size: 16, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                      Spacer(),
                      TextWidget(textdata: selectedLanguage, size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: ()async {
                          final result=await NavigationServices().navigateTo(RoutesConstants.languagescreen);
                          if (result != null) {
                    setState(() {
                      selectedLanguage = result; // Update the language
                    });
                  }
                        },
                        child: LogoWidget(url: ImagesConstants.goto))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color: const Color.fromARGB(42, 164, 157, 157)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(textdata: "My Profile", size: 16, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                      GestureDetector(
                        onTap: (){
                          NavigationServices().navigateTo(RoutesConstants.profileScreen);
                        },
                        child: LogoWidget(url: ImagesConstants.goto))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color: const Color.fromARGB(42, 164, 157, 157)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(textdata: "Contact Us", size: 16, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                      LogoWidget(url: ImagesConstants.goto)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color: const Color.fromARGB(42, 164, 157, 157)),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(textdata: "Security", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(textdata: "Change Password", size: 16, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                          GestureDetector(
                            onTap: () {
                              NavigationServices().navigateTo(RoutesConstants.changepasswordscreen);
                            },
                            child: LogoWidget(url: ImagesConstants.goto))
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(color: const Color.fromARGB(42, 164, 157, 157)),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(textdata: "Privacy Policy", size: 16, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                          GestureDetector(
                            onTap: () {
                              NavigationServices().navigateTo(RoutesConstants.termsscreen);
                            },
                            child: LogoWidget(url: ImagesConstants.goto))
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(color: const Color.fromARGB(42, 164, 157, 157)),
                      SizedBox(height: 10,),
                      TextWidget(textdata: "Choose what data you share with us", size: 16, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(textdata: "Biometric", size: 16, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeColor: Colors.blue, // Color for active state
                            inactiveThumbColor: Colors.grey, // Color for inactive thumb
                          ),
                        ],
                                       ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}