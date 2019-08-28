import 'package:posts_list_project/redux/general_posts/posts_actions.dart';
import 'package:redux/redux.dart';

import 'general_posts_state.dart';

final postsReducer = combineReducers<GeneralPostsState>([
  TypedReducer<GeneralPostsState, LoadedPosts>(_loadedPosts),

]);
//
GeneralPostsState _loadedPosts(
    GeneralPostsState state, LoadedPosts action) {
  return state.copyWith(posts: action.posts);
}

