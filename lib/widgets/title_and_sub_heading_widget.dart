import 'package:flutter/material.dart';

class TitleAndSubHeadingWidget extends StatelessWidget {
  const TitleAndSubHeadingWidget(
      {super.key, required this.title, required this.subHeading, this.titlesize, this.subtitlesize,
      this.titleweight,this.subtitleweight });
  final String title;
  final String subHeading;
  final double? titlesize;
  final double? subtitlesize;
  final FontWeight? titleweight;
  final FontWeight? subtitleweight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: titlesize,
            fontWeight: titleweight,
            color: const Color.fromRGBO(30, 30, 45, 1),
            //height: titlelineheight
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subHeading,
          style: TextStyle(
            fontSize: subtitlesize,
            fontWeight: subtitleweight,
            color: const Color.fromRGBO(126, 132, 141, 1),
            //height: titlelineheight
          ),
        ),
      ],
    );
  }
}
