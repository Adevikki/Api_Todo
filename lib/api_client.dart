import 'package:fake_todo/models/post.dart';
import 'package:fake_todo/services/remote_services.dart';

class ApiClient {
  Future<List<Post>> getData() async {
    final posts = await RemoteServices().getPosts();
    return posts;
  }
}
