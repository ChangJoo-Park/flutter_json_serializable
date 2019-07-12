import 'dart:convert';
import 'package:http/http.dart' as http;

import 'post.dart';

Future<List> fetchList() async {
  http.Response response =
      await http.get('https://jsonplaceholder.typicode.com/posts');
  List<Post> posts = jsonDecode(response.body)
      .map<Post>((item) => Post.fromJson(item))
      .toList();
  return posts;
}

/// 단독으로 테스트하려면 이 주석을 제거하세요
// main() async {
//   fetchList().then((list) {
//     print(list);
//   });
// }
