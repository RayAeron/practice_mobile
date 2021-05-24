import 'package:flutter/material.dart';
import 'practice_detail.dart';
import 'practice_service.dart';
import 'practice_model.dart';

class PracticePage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Журнал"),
      ),
      body: FutureBuilder(
        future: httpService.getPractice(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Practice>> snapshot) {
          if (snapshot.hasData) {
            List<Practice> marks = snapshot.data;
            return ListView(
              children: marks
                  .map(
                    (Practice practice) => ListTile(
                      title: Text(practice.finalAssessment.toString()),
                      subtitle: Text("${practice.finalAssessment}"),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PracticeDetail(
                            practice: practice,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
