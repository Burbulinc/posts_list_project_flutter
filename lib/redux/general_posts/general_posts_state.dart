import 'package:posts_list_project/data/post_dto.dart';

class GeneralPostsState {
  List<PostDto> posts;

  GeneralPostsState({this.posts});

  factory GeneralPostsState.initial() => GeneralPostsState(posts: List());

  GeneralPostsState copyWith({List<PostDto> posts}) =>
      GeneralPostsState(posts: posts ?? this.posts);
}
