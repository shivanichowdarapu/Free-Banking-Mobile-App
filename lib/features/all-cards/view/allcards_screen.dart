import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class AllcardsScreen extends StatefulWidget {
  const AllcardsScreen({Key? key}) : super(key: key);

  @override
  _AllcardsScreenState createState() => _AllcardsScreenState();
}

class _AllcardsScreenState extends State<AllcardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 74, left: 25, right: 25),
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
                  TextWidget(
                    textdata: "All Cards",
                    size: 20,
                    fontweight: FontWeight.w500,
                    textcolor: ColorsConstants.titlecolor,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              LogoWidget(url: ImagesConstants.mastercard),
              SizedBox(height: 20,),
              LogoWidget(url: ImagesConstants.mastercard),
              SizedBox(height: 150,),
              ButtonWidget(buttonTitle: "Add Card +",buttonWidth: 335,buttonHeight: 56, onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
