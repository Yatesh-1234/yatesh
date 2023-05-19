import 'package:flutter/cupertino.dart';


class TextCard extends StatelessWidget {
  final String? data;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontsize;
  TextCard({super.key, this.color, this.data, this.fontWeight, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: TextStyle(color: color,fontFamily: 'SF Pro Display', fontWeight: fontWeight,fontSize: fontsize),);
  }
}