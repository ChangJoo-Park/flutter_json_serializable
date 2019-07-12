import 'package:json_annotation/json_annotation.dart';

/// 아래 코드는 `Post` 클래스가 생성된 파일의 private 멤버에 접근하는 것을 허용합니다.
/// 파일 이름은 *.g.dart이며, 여기서 *은 소스 파일 이름을 나타냅니다.
part 'post.g.dart';

/// 클래스가 시리얼라이저가 필요하다고 알려주는 어노테이션입니다.
@JsonSerializable()
class Post {
  Post(this.userId, this.id, this.title, this.body);
  int userId;
  int id;
  String title;
  String body;

  /// map 데이터를 가지고 Post 인스턴스를 만드는데 필요한 factory 생성자입니다.
  /// 'post.g.dart'의 `_$PostFromJson()` 생성자에 구현이 있습니다.
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  /// `toJson` 은 JSON으로 직렬화할 수 있도록 합니다.
  /// 자동으로 만들어진 post.g.dart에 구현이 있습니다.
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
