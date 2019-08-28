
import 'dart:math';

import 'package:posts_list_project/data/dto/post_dto.dart';
import 'package:posts_list_project/utils/rest_client.dart';

class PostsRepository {
  final RestClient restClient;

  PostsRepository(this.restClient);

  void getGeneralPosts(
      {Function(List<PostDto>) success, Function(Error) error}) {
    restClient.get('/categories/', successList: (json) {
   //   success(categoryFromList(json));
    }, error: (err) {
    //  Error e = Error.fromJson(err.data);
   //   error(e);
    });
  }


}
