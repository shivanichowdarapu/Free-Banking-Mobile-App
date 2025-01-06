import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';
import 'package:free_banking_mobile_app/widgets/transaction_widget.dart';

class MycardsScreen extends StatefulWidget {
  const MycardsScreen({ Key? key }) : super(key: key);

  @override
  _MycardsScreenState createState() => _MycardsScreenState();
}

class _MycardsScreenState extends State<MycardsScreen> {
  RangeValues currentRangeValues=const RangeValues(0, 10000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 64,left: 20,right: 20),
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
                  TextWidget(textdata: "My Cards", size: 20, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                  GestureDetector(
                    onTap: () {
                      NavigationServices().navigateTo(RoutesConstants.addnewcardscreen);
                    },
                    child: LogoWidget(url: ImagesConstants.add)),
                ],
              ),
              SizedBox(height: 30,),
              LogoWidget(url: ImagesConstants.mastercard),
              SizedBox(height: 30,),
                  Column(
                    children: [
                      TransactionWidget(titledata: "Apple Store", subtitledata: "Entertainment", transacData: "-\$5,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.apple),
                      SizedBox(height: 25,),
                      TransactionWidget(titledata: "Spotify", subtitledata: "Music", transacData: "-\$12,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.spotify),
                      SizedBox(height: 25,),
                      TransactionWidget(titledata: "Grocery", subtitledata: "Shopping", transacData: "-\$88", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.grocery),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Card(
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        TextWidget(textdata: "Monthly spending limit", size: 20, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                        SizedBox(height: 20,),
                        RangeSlider(values: currentRangeValues,max: 10000,divisions: 5,
                        labels: RangeLabels(currentRangeValues.start.round().toString(), currentRangeValues.end.round().toString()), onChanged: (RangeValues values)
                        {
                          setState(() {
                            currentRangeValues=values;
                          });
                        }),
                        const SizedBox(height: 10),
                  TextWidget(
                    textdata: "Amount: \$${currentRangeValues.end.round()}",
                    size: 16,
                    fontweight: FontWeight.w400,
                    textcolor: ColorsConstants.titlecolor,
                  ),
                  SizedBox(height: 5,),
                  //LogoWidget(url: ImagesConstants.amountcard,width: 500,)
                      ],
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}