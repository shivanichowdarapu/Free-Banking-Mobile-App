import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({ Key? key }) : super(key: key);

  @override
  _TermsAndConditionsScreenState createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 74,left: 25,right: 25),
        child: Container(
          child: Column(
            children: [
              Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    NavigationServices().goBack();
                  },
                  child: LogoWidget(url: ImagesConstants.back)),
                  SizedBox(width: 60,),
                TextWidget(textdata: "Terms & Conditions", size: 20, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
              ],
             ),
             SizedBox(height: 30,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 TextWidget(textdata: "L15.1 Thank you for visiting our Application", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "Doctor 24×7 and enrolling as a member.", size: 14, fontweight: FontWeight.w400),
                 SizedBox(height: 20,),
                 TextWidget(textdata: "15.2 Your privacy is important to us. To better", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "protect your privacy, we are providing this", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "notice explaining our policy with regards to", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "the information you share with us. This privacy", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "policy relates to the information we collect,", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "online from Application, received through the", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "email, by fax or telephone, or in person or in", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "any other way and retain and use for the", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "purpose of providing you services. If you do", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "not agree to the terms in this Policy, we kindly", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "ask you not to use these portals and/or sign", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "the contract document.", size: 14, fontweight: FontWeight.w400),
                 SizedBox(height: 20,),
                 TextWidget(textdata: "15.3 In order to use the services of this", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "Application, You are required to register", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "yourself by verifying the authorised device.", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "online from Application, received through the", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "This Privacy Policy applies to your information", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "that we collect and receive on and through", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "Doctor 24×7; it does not apply to practices of", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "businesses that we do not own or control or", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "people we do not employ.", size: 14, fontweight: FontWeight.w400),
                 SizedBox(height: 20,),
                 TextWidget(textdata: "15.4 By using this Application, you agree to the", size: 14, fontweight: FontWeight.w400),
                 TextWidget(textdata: "terms of this Privacy Policy.", size: 14, fontweight: FontWeight.w400),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}