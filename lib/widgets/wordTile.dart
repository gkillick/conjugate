import 'package:conjugate/models/word.dart';
import 'package:conjugate/quiz.dart';
import 'package:flutter/material.dart';
import 'wordTag.dart';
import 'package:conjugate/constants.dart';

class WordTile extends StatelessWidget {
  WordTile({this.word});
  Word word;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            word.root,
            style: kTextSubTitle,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: WordTag(title: "PRESENT"),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (c) {
                    return Quiz(
                      word: word,
                      tenseCase: word.present,
                    );
                  }));
                },
              ),
              SizedBox(width: 10),
              WordTag(title: "PAST"),
              SizedBox(width: 10),
              WordTag(title: "FUTURE"),
            ],
          )),
        ],
      ),
      padding: EdgeInsets.all(20),
    );
  }
}
