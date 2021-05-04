import 'package:flutter/material.dart';

const Color kColorMainBackground = Colors.white;
//Color(0xFFF4F6F5);

const Color kColorGreyBackground = Colors.yellow;

const TextStyle kTextHeaderBold = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
);
const TextStyle kTextHeaderLight =
    TextStyle(color: Colors.black45, fontWeight: FontWeight.w500, fontSize: 15);

const TextStyle kTextSubTitle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 30,
);

const TextStyle kTextStyleSmallBold = TextStyle(
  color: Colors.black,
  fontSize: 12,
  letterSpacing: 1.2,
  fontWeight: FontWeight.w600,
);
const TextStyle kTextStyleMediumBold = TextStyle(
  color: Colors.black,
  fontSize: 15,
  letterSpacing: 1.2,
  fontWeight: FontWeight.w600,
);

const TextStyle kTextStyleLightGrey = TextStyle(
  color: Colors.black45,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);
const TextStyle kTextStyleInputBold = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);
const TextStyle kTextStyleInputBoldRed = TextStyle(
  color: Colors.red,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);
enum Tense {
  Present,
  Past,
  Future,
}
