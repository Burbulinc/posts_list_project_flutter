import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:posts_list_project/redux/app_state.dart';
import 'package:posts_list_project/screens/posts/posts_viewmodel.dart';

class PostsScreen extends StatefulWidget {
  PostsScreen({Key key}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsScreen> {
  var currentSelectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Color(0xFF2b385c),
                    Color(0xFF6A8FAB),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.0, 0.7],
                  tileMode: TileMode.clamp),
            ),
          ),
          StoreConnector<AppState, GeneralPostsViewModel>(
            converter: (store) => GeneralPostsViewModel.fromStore(store),
            onInit: (store) {},
            builder: (_, viewModel) {
              return Container(
                margin: EdgeInsets.only(bottom: 16),
                child: ListView(
                  children: <Widget>[
                    buildItem(),
                    buildItem(),
                    buildItem(),
                    Container(
                      margin: EdgeInsets.only(bottom: 32),
                      child: buildItem(),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Container buildItem() {
    return Container(
      margin: EdgeInsets.only(top: 4, bottom: 6, left: 24, right: 24),
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.only(
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(24),
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: new Offset(5.0, 5.0),
          ),
        ],
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16, top: 16),
                          child: Text(
                            "First line post..",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF2b385c)),
                          ),
                        ),
                        Divider(),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 16, bottom: 16),
                              child: Text(
                                "Author: Dmitro",
                                style: TextStyle(
                                    color: Color(0xFF2b385c), fontSize: 13),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8, bottom: 16),
                              child: Text(
                                "26.8.2019 ",
                                style: TextStyle(color: Color(0xFF2b385c)),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                flex: 3,
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8, top: 16),
                              child: Text(
                                "+5",
                                style: TextStyle(color: Color(0xFF6A8FAB)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8, top: 8),
                              child: Icon(
                                Icons.thumb_up,
                                size: 24,
                                color: Color(0xFF6A8FAB),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16, bottom: 0),
                        child: Divider(),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8, top: 0),
                              child: Text(
                                "-7",
                                style: TextStyle(color: Color(0xFF6A8FAB)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Icon(
                                Icons.thumb_down,
                                size: 24,
                                color: Color(0xFF6A8FAB),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                flex: 1,
              ),
            ])
          ],
        ),
      ),
    );
  }

  Column background() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Wrap(
              alignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[],
            ),
          ),
        ),
      ],
    );
  }
}
