import 'dart:convert';

import 'package:bootcamperciyes_localmovie_app/product/model/response_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<Response?> getData() async {
    final response =
        await http.get(Uri.parse('http://85.159.71.66:8080/api/movies'));
    if (response.statusCode != 200) return null;

    final data = Response.fromJson(jsonDecode(response.body));
    return data;
  }
}
