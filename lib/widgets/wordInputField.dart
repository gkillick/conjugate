import 'package:conjugate/models/spanishWords.dart';
import 'package:conjugate/models/tenseCase.dart';
import 'package:flutter/material.dart';
import 'package:conjugate/constants.dart';
import 'package:provider/provider.dart';

class WordInputField extends StatefulWidget {
  const WordInputField({
    Key key,
    @required this.person,
    @required this.tenseCase,
  }) : super(key: key);

  final String person;
  final TenseCase tenseCase;

  @override
  _WordInputFieldState createState() => _WordInputFieldState();
}

class _WordInputFieldState extends State<WordInputField> {
  final myController = TextEditingController();
  TextStyle textStyle = kTextStyleInputBold;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, bottom: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                widget.person,
                textAlign: TextAlign.right,
                style: kTextStyleLightGrey,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: TextFormField(
                      controller: myController,
                      onChanged: (word) {
                        Provider.of<TenseCase>(context, listen: false)
                            .upDatePerson(
                                SpanishWords.persons.indexOf(widget.person),
                                word);
                        //go to next word if good
                        if (Provider.of<TenseCase>(context, listen: false)
                                    .getTenses()[
                                SpanishWords.persons.indexOf(widget.person)] ==
                            widget.tenseCase.getTenses()[
                                SpanishWords.persons.indexOf(widget.person)]) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: textStyle,
                      onEditingComplete: () {
                        //refactor needed here, unreadable basically checks if word entered is wrong and sets to correct word
                        if (Provider.of<TenseCase>(context, listen: false)
                                    .getTenses()[
                                SpanishWords.persons.indexOf(widget.person)] !=
                            widget.tenseCase.getTenses()[
                                SpanishWords.persons.indexOf(widget.person)]) {
                          myController.text = widget.tenseCase.getWordForIndex(
                              SpanishWords.persons.indexOf(widget.person));
                          setState(() {
                            textStyle = kTextStyleInputBoldRed;
                          });
                        }

                        FocusScope.of(context).nextFocus();
                      }),
                ),
                Provider.of<TenseCase>(context).getTenses()[
                            SpanishWords.persons.indexOf(widget.person)] ==
                        widget.tenseCase.getTenses()[
                            SpanishWords.persons.indexOf(widget.person)]
                    ? Icon(
                        Icons.check_circle,
                        color: Colors.greenAccent,
                        size: 30,
                      )
                    : SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
