import 'package:conjugate/models/tenseCase.dart';
import 'package:conjugate/models/word.dart';
import 'package:conjugate/widgets/wordTile.dart';
import 'package:flutter/material.dart';

class SpanishWords {
  static List<String> persons = [
    "yo",
    "tú",
    "él/ella",
    "usted",
    "nosotros",
    "vosotras",
    "ellos/ellas/ustedes"
  ];

  List<Word> words = [
    Word(
      root: "Ser",
      english: "to be (permanent)",
      present: TenseCase(
        yo: "soy",
        tu: "eres",
        el: "es",
        usted: "es",
        nosotros: "somos",
        vosotros: "sois",
        ellos: "son",
      ),
    ),
    Word(
      root: "Estar",
      english: "to be (temporary)",
      present: TenseCase(
        yo: "estoy",
        tu: "estás",
        el: "está",
        usted: "está",
        nosotros: "estamos",
        vosotros: "estáis",
        ellos: "están",
      ),
    ),
    Word(
      root: "Ir",
      english: "to go",
      present: TenseCase(
        yo: "voy",
        tu: "vas",
        el: "viene",
        usted: "vienen",
        nosotros: "vamos",
        vosotros: "vais",
        ellos: "van",
      ),
    )
  ];

  List<WordTile> getWordTiles() {
    List<WordTile> words = [];
    for (Word word in this.words) {
      words.add(WordTile(
        word: word,
      ));
    }
    return words;
  }
}
