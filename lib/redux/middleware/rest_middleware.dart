import 'package:posts_list_project/data/repository/posts_repository.dart';
import 'package:posts_list_project/redux/general_posts/posts_actions.dart';
import 'package:posts_list_project/utils/rest_client.dart';
import 'package:redux/redux.dart';

import '../app_state.dart';

class RestMiddleware extends MiddlewareClass<AppState> {
  final RestClient _restClient;
  PostsRepository _postsRepository;

  RestMiddleware(this._restClient) {
    _postsRepository = PostsRepository(_restClient);
  }

  @override
  void call(Store<AppState> store, dynamic action, NextDispatcher next) {
    next(action);

    if (action is LoadPosts) {
      _postsRepository.getGeneralPosts(success: (result) {
        store.dispatch(LoadedPosts(result.reversed.toList()));
      });
    }
  }
}
