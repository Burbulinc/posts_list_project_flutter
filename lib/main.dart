import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:posts_list_project/redux/app_state.dart';
import 'package:posts_list_project/redux/store.dart';
import 'package:posts_list_project/screens/auth/auth.dart';
import 'package:posts_list_project/screens/posts/list_posts.dart';
import 'package:redux/redux.dart';

Future main() async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  var store = await createStore();

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  @override
  final Store<AppState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AuthScreen(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/posts':
              {
                return PageRouteBuilder(
                  pageBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return PostsScreen();
                  },
                  transitionsBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                      Widget child) {
                    return SlideTransition(
                      position: new Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: new SlideTransition(
                        position: new Tween<Offset>(
                          begin: Offset.zero,
                          end: const Offset(-1.0, 0.0),
                        ).animate(secondaryAnimation),
                        child: child,
                      ),
                    );
                  },
                );
              }
              break;
            default:
              throw ("Unknown operator ");
          }
        },
      ),
    );
  }
}
