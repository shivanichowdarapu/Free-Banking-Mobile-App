import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';

class TransactionWidget extends StatelessWidget {
const TransactionWidget({ super.key,required this.titledata,required this.subtitledata,required this.transacData,required this.transacColor,required this.url});
final String titledata;
final String subtitledata;
final transacData;
final Color transacColor;
final String url;
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        
      },
      child: SizedBox(
        height:60 ,
        child: Card(
          child: Row(
            children: [
              Image.asset(url),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titledata,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  Text(subtitledata,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorsConstants.textcolor),)
                ],
              ),
              //SizedBox(width: 190,),
              Spacer(),
              Text(transacData,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: transacColor)),
              SizedBox(width: 5,)
            ],
          ),
        ),
      ),
    );
  }
}