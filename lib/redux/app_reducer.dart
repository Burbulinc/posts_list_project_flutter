import 'package:posts_list_project/redux/general_posts/posts_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) => new AppState(
      postsState: postsReducer(state.postsState, action),


);
