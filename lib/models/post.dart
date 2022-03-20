// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
    Post({
        required this.name,
        required this.id,
        required this.username,
        required this.email
    });

    String name;
    int id;
    String username;
    String email;

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        name: json["name"],
        id: json["id"],
        username: json["username"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "username": username,
        "email": email,
    };
}
