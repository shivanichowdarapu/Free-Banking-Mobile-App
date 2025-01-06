import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
const IconWidget({super.key, this.url, this.data,});

  final String? url;
  final String? data;
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          Image.asset(url ?? ""),
          Text(data ?? "",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }
}