import 'package:conjugate/models/spanishWords.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class MainPage extends StatelessWidget {
  @override
  SpanishWords spanishWords = SpanishWords();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorMainBackground,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Conjugator",
          style: kTextHeaderBold,
        ),
        backgroundColor: kColorMainBackground,
      ),
      body: Column(
        children: spanishWords.getWordTiles(),
      ),
    );
  }
}
