import 'dart:convert';
import 'package:http/http.dart';
import 'package:practice_mobile/practice_model.dart';
import 'practice_model.dart';

class HttpService {
  final String postsURL =
      "https://apiandrew20210524014544.azurewebsites.net/api/Ratings";

  Future<List<Practice>> getPractice() async {
    Response res = await get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Practice> posts = body
          .map(
            (dynamic item) => Practice.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
