import 'package:flutter/material.dart';
import 'package:conjugate/constants.dart';

class WordTag extends StatelessWidget {
  WordTag({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: kTextStyleSmallBold,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: kColorGreyBackground,
      ),
    );
  }
}
