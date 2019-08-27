import 'general_posts/general_posts_state.dart';

class AppState {
  final GeneralPostsState postsState;

  AppState({this.postsState});

  factory AppState.initial() => AppState(
        postsState: GeneralPostsState.initial(),
      );

  AppState copyWith({
    GeneralPostsState postsState,
  }) =>
      AppState(
        postsState: postsState ?? this.postsState,
      );
}
