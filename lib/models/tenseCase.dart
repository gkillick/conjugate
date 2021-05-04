import 'package:flutter/material.dart';

class TenseCase extends ChangeNotifier {
  TenseCase(
      {this.yo,
      this.tu,
      this.el,
      this.usted,
      this.nosotros,
      this.vosotros,
      this.ellos});

  TenseCase.blank() {
    yo = "";
    tu = "";
    el = "";
    usted = "";
    ellos = "";
    nosotros = "";
    vosotros = "";
  }

  String yo;
  String tu;
  String el;
  String usted;
  String nosotros;
  String vosotros;
  String ellos;

  List<String> getTenses() {
    return [
      this.yo,
      this.tu,
      this.el,
      this.usted,
      this.nosotros,
      this.vosotros,
      this.ellos
    ];
  }

  void upDatePerson(int index, String word) {
    switch (index) {
      case 0:
        yo = word;
        break;
      case 1:
        tu = word;
        break;
      case 2:
        el = word;
        break;
      case 3:
        usted = word;
        break;
      case 4:
        nosotros = word;
        break;
      case 5:
        vosotros = word;
        break;
      case 6:
        ellos = word;
        break;
    }

    notifyListeners();
  }

  String getWordForIndex(int i) {
    switch (i) {
      case 0:
        return yo;
        break;
      case 1:
        return tu;
        break;
      case 2:
        return el;
        break;
      case 3:
        return usted;
        break;
      case 4:
        return nosotros;
        break;
      case 5:
        return vosotros;
        break;
      case 6:
        return ellos;
        break;
      default:
        return "no word";
    }
  }
}
