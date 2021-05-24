import 'package:flutter/material.dart';
import 'practice_model.dart';

class PracticeDetail extends StatelessWidget {
  final Practice practice;

  PracticeDetail({this.practice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(practice.finalAssessment.toString()),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("${practice.finalAssessment}"),
                        subtitle: Text("Оценка"),
                      ),
                      ListTile(
                        title: Text(practice.surname),
                        subtitle: Text("Фамилия"),
                      ),
                      ListTile(
                        title: Text("${practice.name}"),
                        subtitle: Text("Имя"),
                      ),
                      ListTile(
                        title: Text("${practice.patronymic}"),
                        subtitle: Text("Отчество"),
                      ),
                      ListTile(
                        title: Text("${practice.nameOfThePractice}"),
                        subtitle: Text("Название практики"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
