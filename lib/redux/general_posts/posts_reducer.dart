import 'package:redux/redux.dart';

import 'general_posts_state.dart';

final postsReducer = combineReducers<GeneralPostsState>([
//  TypedReducer<GeneralPostsState, LoadPosts>(_loadPosts),

]);
//
//GeneralPostsState _loadPosts(
//    GeneralPostsState state, LoadPosts action) {
//  return state.copyWith(posts: action.transactions);
//}

