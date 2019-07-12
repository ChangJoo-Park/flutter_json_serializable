// https://jsonplaceholder.typicode.com/posts
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'post.dart';

Future<List> fetchList() async {
  http.Response response =
      await http.get('https://jsonplaceholder.typicode.com/posts');
  List<Post> posts =
      jsonDecode(response.body).map((item) => Post.fromJson(item)).toList();
  return posts;
}

// main() async {
//   fetchList().then((list) {
//     print(list);
//   });
// }
