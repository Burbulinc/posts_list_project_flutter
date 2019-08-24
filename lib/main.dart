import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final planetCard = new Container(
    height: 112,
    margin: EdgeInsets.only(
      left: 32,
      right: 32,
    ),
    child: Stack(children: [
      Container(
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: new Color(0xFF557289),
              blurRadius: 5.0,
              offset: new Offset(0.0, 5.0),
            ),
          ],
        ),
        height: 80,
        child: Container(
          margin: EdgeInsets.only(left: 32, right: 32, bottom: 8),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                labelStyle: new TextStyle(color: const Color(0xFF424242)),
                hintText: 'Nick'),
          ),
        ),
      ),

      Center(
        child: Container(
          margin: EdgeInsets.only(top: 48),
          child: Image(
            image: AssetImage("res/img/next_step.png"),
          ),
          width: 54.0,
          height: 54.0,
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: new BorderRadius.circular(90),
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: new Color(0xFF557289),
                blurRadius: 1.0,
                offset: new Offset(0.0, 7.0),
              ),
            ],
          ),
        ),
      )

//        Positioned.fill(
////            top: 40,
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Container(
//                  child: Image(
//                    image: AssetImage("res/img/next_step.png"),
//                  ),
//                  width: 54.0,
//                  height: 54.0,
//                  decoration: new BoxDecoration(
//                    color: Colors.white,
//                    shape: BoxShape.rectangle,
//                    borderRadius: new BorderRadius.circular(90),
//                  ),
//                )
//              ],
//            ))
    ]),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b385c),
      body: Stack(
        children: <Widget>[
          background(),
          Container(
              child: Stack(
            children: <Widget>[
//
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 64),
                      child: Text(
                        "Qweer",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),

              new Column(
                children: <Widget>[
                  new Flexible(
                    child: new Container(),
                    flex: 2,
                  ),
                  new Flexible(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(color: Colors.white,fontSize: 32),
                                ),
                                margin: EdgeInsets.only(left: 32,bottom: 8),
                              )
                            ],
                          ),
                          planetCard
                        ],
                      ),
                    ),
                    flex: 1,
                  )
                ],
              ),
            ],
          )),
        ],
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
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage("res/img/background_img.png"),
                      ),
                      margin: EdgeInsets.only(top: 54, bottom: 0),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top: 0),
                      height: 300,
                      color: Color(0xFF6A8FAB),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
