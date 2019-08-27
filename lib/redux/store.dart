import 'dart:async';

import 'package:posts_list_project/redux/app_reducer.dart';
import 'package:posts_list_project/utils/rest_client.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_state.dart';

Future<Store<AppState>> createStore() async {
  var prefs = await SharedPreferences.getInstance();
  var restClient = new RestClient(prefs);
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
//      LoggingMiddleware.printer(),
//      ValidationMiddleware(),
//      SocialsMiddleware(restClient),
//      LocalStorageMiddleware(),
//      RestMiddleware(restClient),
//      PreparationDateMiddleware(),
//      NavigationMiddleware(),
    ],
  );
}
