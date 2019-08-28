// To parse this JSON data, do
//
//     final postDto = postDtoFromJson(jsonString);

import 'dart:convert';

List<PostDto> postsMapToList(List list) {
  var newList = new List<PostDto>.from(list.map((x) => PostDto.fromMap(x)));
  return newList;
}

class PostDto {
  int id;
  int likes;
  String text;
  String type;
  String userName;

  PostDto({
    this.id,
    this.likes,
    this.text,
    this.type,
    this.userName,
  });

  factory PostDto.fromJson(String str) => PostDto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PostDto.fromMap(Map<String, dynamic> json) => new PostDto(
        id: json["id"],
        likes: json["likes"] == null ? null : json["likes"],
        text: json["text"],
        type: json["type"] == null ? null : json["type"],
        userName: json["user_name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "likes": likes == null ? null : likes,
        "text": text,
        "type": type == null ? null : type,
        "user_name": userName,
      };
}
