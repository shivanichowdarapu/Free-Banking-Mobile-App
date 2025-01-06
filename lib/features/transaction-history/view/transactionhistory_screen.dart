import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';
import 'package:free_banking_mobile_app/widgets/transaction_widget.dart';

class TransactionhistoryScreen extends StatefulWidget {
  const TransactionhistoryScreen({ Key? key }) : super(key: key);

  @override
  _TransactionhistoryScreenState createState() => _TransactionhistoryScreenState();
}

class _TransactionhistoryScreenState extends State<TransactionhistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 74,left: 20,right: 20),
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
                      TextWidget(textdata: "Transaction History", size: 20, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: LogoWidget(url: ImagesConstants.clock))
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(textdata: "Today", size: 18, fontweight: FontWeight.w500, textcolor: ColorsConstants.titlecolor),
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
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Grocery", subtitledata: "Shopping", transacData: "-\$88", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.grocery),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Apple Store", subtitledata: "Entertainment", transacData: "-\$5,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.apple),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Spotify", subtitledata: "Music", transacData: "-\$12,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.spotify),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Money Transfer", subtitledata: "Transaction", transacData: "\$300", transacColor: ColorsConstants.primaryColor, url: ImagesConstants.moneytransfer),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Spotify", subtitledata: "Music", transacData: "-\$12,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.spotify),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Grocery", subtitledata: "Shopping", transacData: "-\$88", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.grocery),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Spotify", subtitledata: "Music", transacData: "-\$12,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.spotify),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Money Transfer", subtitledata: "Transaction", transacData: "\$300", transacColor: ColorsConstants.primaryColor, url: ImagesConstants.moneytransfer),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Grocery", subtitledata: "Shopping", transacData: "-\$88", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.grocery),
                          SizedBox(height: 25,),
                          TransactionWidget(titledata: "Apple Store", subtitledata: "Entertainment", transacData: "-\$5,99", transacColor: ColorsConstants.titlecolor, url: ImagesConstants.apple),
                          SizedBox(height: 25,),
                        ]
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}