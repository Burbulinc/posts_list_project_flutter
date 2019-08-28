import 'package:intl/intl.dart';
import 'package:posts_list_project/data/dto/post_dto.dart';
import 'package:posts_list_project/redux/app_state.dart';

import 'package:redux/redux.dart';

class GeneralPostsViewModel {
  List<PostDto> list = List();

  GeneralPostsViewModel({this.list});

  static GeneralPostsViewModel fromStore(Store<AppState> store) {
    return GeneralPostsViewModel(list: store.state.postsState.posts);
  }
}
