import 'dart:io';

import 'package:fake_todo/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  String url = "https://jsonplaceholder.typicode.com/users";
  Future<List<Post>> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse(url);
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    } else {
      throw http.ClientException('Error');
    }
  }
}
