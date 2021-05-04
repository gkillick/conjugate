import 'package:conjugate/models/tenseCase.dart';
import 'package:flutter/material.dart';

class Word {
  Word({this.root, this.english, this.present, this.past, this.future});
  String root;
  String english;
  TenseCase present;
  TenseCase past;
  TenseCase future;
}
