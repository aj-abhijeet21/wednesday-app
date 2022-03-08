import '../models/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<List<Model>> getData() async {
    List<Model> list = [];
    const String url =
        'https://api.thecatapi.com/v1/images/search?limit=20&page=1&mime_types=png';

    var uri = Uri.parse(url);

    var response = await http.get(uri);

    var jsonData = json.decode(response.body) as List;

    jsonData.forEach(
      (element) => list.add(
        Model.fromJson(element),
      ),
    );

    // print(list.length);
    return list;
  }
}
