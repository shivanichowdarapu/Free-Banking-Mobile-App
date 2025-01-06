import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/button_widget.dart';
import 'package:free_banking_mobile_app/widgets/input_textfield_widget.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class AddnewcardScreen extends StatefulWidget {
  const AddnewcardScreen({ Key? key }) : super(key: key);

  @override
  _AddnewcardScreenState createState() => _AddnewcardScreenState();
}

class _AddnewcardScreenState extends State<AddnewcardScreen> {
  final TextEditingController _expiryDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 75),
        child: SingleChildScrollView(
          child: Container(
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
                    SizedBox(width: 80),
                    TextWidget(textdata: "Add New Card",size: 20,fontweight: FontWeight.w500,textcolor: ColorsConstants.titlecolor,),
                  ],
                ),
                SizedBox(height: 30,),
                LogoWidget(url: ImagesConstants.mastercard),
                SizedBox(height: 20,),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(textdata: "Card Holder Name",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
                  SizedBox(height: 10),
                  InputTextFieldWidget(hintText: "", prefixurl: ImagesConstants.user),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(textdata: "Expiry Date",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
                          GestureDetector(
          onTap: () async {
            DateTime? selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (selectedDate != null) {
              // Update the controller or variable to display the selected date
              setState(() {
                _expiryDateController.text = "${selectedDate.month}/${selectedDate.year}";
              });
            }
          },child: AbsorbPointer(
            child: InputTextFieldWidget(
              hintText: "",
              width: 170,
              height: 45,
              textEditingController: _expiryDateController, // Add a TextEditingController
            ),
          ),),
                          SizedBox(height: 10),
                          //InputTextFieldWidget(hintText: "", width: 170,height: 45,),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(textdata: "4-digit CVV",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
                          SizedBox(height: 10),
                          InputTextFieldWidget(hintText: "",width: 170,height: 45, ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextWidget(textdata: "Card Number",size: 14,fontweight: FontWeight.w400,textcolor: ColorsConstants.textcolor,),
                  SizedBox(height: 10),
                  InputTextFieldWidget(hintText: "",prefixurl: ImagesConstants.card,suffixurl:ImagesConstants.cardlogo ,),
                  SizedBox(height: 100,),
                  ButtonWidget(buttonTitle: "Add Card", onPressed: (){},buttonWidth: 375,buttonHeight: 56,)
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}