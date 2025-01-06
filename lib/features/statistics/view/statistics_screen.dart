import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';
import 'package:free_banking_mobile_app/widgets/transaction_widget.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({ Key? key }) : super(key: key);

  @override
  _StatisticsScreenState createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 64,left: 20,right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationServices().navigateTo(RoutesConstants.homeScreen);
                    },
                    child: LogoWidget(url: ImagesConstants.back)),
                  TextWidget(textdata: "Statistics", size: 20, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                  LogoWidget(url: ImagesConstants.bell),
                ],
              ),
              SizedBox(height: 30,),
              LogoWidget(url: ImagesConstants.graph),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(textdata: "Transaction", size: 18, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                      GestureDetector(
                        onTap: () {
                          NavigationServices().navigateTo(RoutesConstants.transactionhistoryscreen);
                        },
                        child: TextWidget(textdata: "See All", size: 14, fontweight: FontWeight.w500, textcolor: ColorsConstants.primaryColor))
                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      TransactionWidget(titledata: "Apple Store", subtitledata: "Entertainment", transacData: "-\$5,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.apple),
                      SizedBox(height: 25,),
                      TransactionWidget(titledata: "Spotify", subtitledata: "Music", transacData: "-\$12,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.spotify),
                      SizedBox(height: 25,),
                      TransactionWidget(titledata: "Money Transfer", subtitledata: "Transaction", transacData: "\$300", transacColor: ColorsConstants.primaryColor, url: ImagesConstants.moneytransfer),
                    ]
                  )
            ],
          ),
        ),
      ),
    );
  }
}