import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/icon_widget.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';
import 'package:free_banking_mobile_app/widgets/transaction_widget.dart';

class HomeinfoScreen extends StatefulWidget {
  const HomeinfoScreen({ Key? key }) : super(key: key);

  @override
  _HomeinfoScreenState createState() => _HomeinfoScreenState();
}

class _HomeinfoScreenState extends State<HomeinfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 74),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    LogoWidget(url: ImagesConstants.profile),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(textdata: "Welcome back,", size: 12, fontweight: FontWeight.w400, textcolor: ColorsConstants.textcolor),
                        SizedBox(height: 10,),
                        TextWidget(textdata: "Tanya Myroniuk", size: 18, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        NavigationServices().navigateTo(RoutesConstants.searchscreen);
                      },
                      child: LogoWidget(url: ImagesConstants.search))
                  ],
                ),
                SizedBox(height: 25,),
                LogoWidget(url: ImagesConstants.mastercard),
                SizedBox(height: 20,),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: IconWidget(url: ImagesConstants.sent,data: "Sent",)),
                    SizedBox(width: 48,),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: IconWidget(url: ImagesConstants.received,data: "Received",)),
                    SizedBox(width: 48,),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: IconWidget(url: ImagesConstants.loan,data: "Loan",)),
                    SizedBox(width: 48,),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: IconWidget(url: ImagesConstants.topup,data: "Topup",)),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    TextWidget(textdata: "Transaction", size: 18, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        NavigationServices().navigateTo(RoutesConstants.transactionhistoryscreen);
                      },
                      child: TextWidget(textdata: "See All", size: 14, fontweight: FontWeight.w500, textcolor: ColorsConstants.primaryColor))
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    TransactionWidget(titledata: "Apple Store", subtitledata: "Entertainment", transacData: "-\$5,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.apple),
                    SizedBox(height: 25,),
                    TransactionWidget(titledata: "Spotify", subtitledata: "Music", transacData: "-\$12,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.spotify),
                    SizedBox(height: 25,),
                    TransactionWidget(titledata: "Money Transfer", subtitledata: "Transaction", transacData: "\$300", transacColor: ColorsConstants.primaryColor, url: ImagesConstants.moneytransfer),
                    SizedBox(height: 25,),
                    TransactionWidget(titledata: "Grocery", subtitledata: "Shopping", transacData: "-\$88", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.grocery),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}