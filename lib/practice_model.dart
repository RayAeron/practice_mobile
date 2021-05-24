import 'dart:convert';

List<Practice> practiceFromJson(String str) =>
    List<Practice>.from(json.decode(str).map((x) => Practice.fromJson(x)));

String practiceToJson(List<Practice> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Practice {
  Practice({
    this.idRating,
    this.finalAssessment,
    this.surname,
    this.name,
    this.patronymic,
    this.nameOfThePractice,
  });

  int idRating;
  double finalAssessment;
  String surname;
  String name;
  String patronymic;
  String nameOfThePractice;

  factory Practice.fromJson(Map<String, dynamic> json) => Practice(
        idRating: json["id_rating"],
        finalAssessment: json["final_assessment"],
        surname: json["surname"],
        name: json["name"],
        patronymic: json["patronymic"],
        nameOfThePractice: json["name_of_the_practice"],
      );

  Map<String, dynamic> toJson() => {
        "id_rating": idRating,
        "final_assessment": finalAssessment,
        "surname": surname,
        "name": name,
        "patronymic": patronymic,
        "name_of_the_practice": nameOfThePractice,
      };
}
