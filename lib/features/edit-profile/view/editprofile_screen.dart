import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/input_textfield_widget.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class EditprofileScreen extends StatefulWidget {
  const EditprofileScreen({ Key? key }) : super(key: key);

  @override
  _EditprofileScreenState createState() => _EditprofileScreenState();
}

class _EditprofileScreenState extends State<EditprofileScreen> {
 @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.only(top: 74, left: 25, right: 25, bottom: 70),
      child: SingleChildScrollView(
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
                SizedBox(width: 100),
                TextWidget(textdata: "Edit Profile",size: 20,fontweight: FontWeight.w500,textcolor: ColorsConstants.titlecolor,),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                LogoWidget(url: ImagesConstants.profile),
                SizedBox(height: 6),
                TextWidget(textdata: "Tanya Myroniuk",size: 18,fontweight: FontWeight.w500,textcolor: ColorsConstants.titlecolor,),
                SizedBox(height: 6),
                TextWidget(textdata: "Senior Designer",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(textdata: "Full Name",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
                SizedBox(height: 10),
                InputTextFieldWidget(hintText: "", prefixurl: ImagesConstants.user),
                SizedBox(height: 20),
                TextWidget(textdata: "Email Address",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
                SizedBox(height: 10),
                InputTextFieldWidget(hintText: "", prefixurl: ImagesConstants.email),
                SizedBox(height: 20),
                TextWidget(textdata: "Phone Number",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
                SizedBox(height: 10),
                InputTextFieldWidget(hintText: "", prefixurl: ImagesConstants.phone),
                SizedBox(height: 20),
                TextWidget(textdata: "Birth Date",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
                SizedBox(height: 10),
                InputTextFieldWidget(hintText: ""),
                SizedBox(height: 50,),
                ButtonWidget(buttonTitle: "Add Card", onPressed: (){},buttonWidth: 375,buttonHeight: 56,)
              ],
            ),
            SizedBox(height: 90),
            TextWidget(textdata: "Joined 28 Jan 2021",size: 12,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
          ],
        ),
      ),
    ),
  );
}
}