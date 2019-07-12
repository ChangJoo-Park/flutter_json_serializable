import 'package:json_annotation/json_annotation.dart';

/// This allows the `Post` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'post.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Post {
  Post(this.userId, this.id, this.title, this.body);
  int userId;
  int id;
  String title;
  String body;

  /// A necessary factory constructor for creating a new Post instance
  /// from a map. Pass the map to the generated `_$PostFromJson()` constructor.
  /// The constructor is named after the source class, in this case Post.
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$PostToJson`.
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
