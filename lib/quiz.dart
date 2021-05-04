import 'package:conjugate/constants.dart';
import 'package:conjugate/models/tenseCase.dart';
import 'package:flutter/material.dart';
import './models/word.dart';
import './models/spanishWords.dart';
import './widgets/wordInputField.dart';
import 'package:provider/provider.dart';

class Quiz extends StatefulWidget {
  Quiz({this.word, this.tenseCase});
  final Word word;
  final TenseCase tenseCase;

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final persons = SpanishWords.persons;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TenseCase>(
      create: (context) => TenseCase.blank(),
      child: Scaffold(
        backgroundColor: kColorMainBackground,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: kColorMainBackground,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.word.root,
                style: kTextHeaderBold,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.word.english,
                style: kTextHeaderLight,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Builder(builder: (BuildContext context) {
            BuildContext rootContext = context;
            return Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Present Tense",
                    style: kTextStyleMediumBold,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  for (String person in persons)
                    WordInputField(
                      person: person,
                      tenseCase: widget.tenseCase,
                    )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
