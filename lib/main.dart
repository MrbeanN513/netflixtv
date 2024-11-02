import 'package:connectivity_widget/connectivity_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:kandy/page/BANGLA.dart';
import 'package:kandy/page/BOLLYWOOD.dart';
import 'package:kandy/page/ENGLISH.dart';
import 'package:kandy/login/services/authentication.dart';
import 'package:kandy/page/HINDI_DUBBED.dart';
import 'package:kandy/page/SOUTH.dart';

import 'homescreen/home.dart';
// import 'package:connectivity_widget/connectivity_widget.dart';

void main() => runApp(Akdom1st());

class Akdom1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

    return Shortcuts(
      // needed for AndroidTV to be able to select
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        // routes: <String, WidgetBuilder>{
        //   // '/MyHomePage': (BuildContext context) => MyHomePage(),
        //   '/RootPage': (BuildContext context) =>
        //       new RootPage(auth: new Auth()),
        // }),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.userId, this.logoutCallback, this.title})
      : super(key: key);

  final String? title;
  // final BaseAuth? auth;
  final VoidCallback? logoutCallback;
  final String? userId;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  signOut() async {
    try {
      // await widget.auth?.signOut();
      widget.logoutCallback!();
    } catch (e) {
      print(e);
    }
  }

  int _currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ConnectivityUtils.instance
      ..serverToPing =
          "https://gist.githubusercontent.com/Vanethos/dccc4b4605fc5c5aa4b9153dacc7391c/raw/355ccc0e06d0f84fdbdc83f5b8106065539d9781/gistfile1.txt"
      ..verifyResponseCallback =
          (response) => response.contains("This is a test!");
    return Scaffold(
      body: ConnectivityWidget(
        // onlineCallback: _incrementCounter,
        builder: (context, isOnline) => SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              Container(
                color: Colors.red,
              ),
              // Homepage(),
              // HINDI_DUBBED(),
              // ENGLISH(),
              // BOLLYWOOD(),
              // SOUTH(),
              // BANGLA(),

              Scaffold(
                  backgroundColor: Colors.black,
                  body: Stack(children: <Widget>[
                    Center(
                        child: IconButton(
                      color: Colors.transparent,
                      onPressed: signOut,
                      icon: Icon(
                        Icons.power_settings_new,
                        color: Colors.redAccent[700],
                      ),
                      // label: Text(
                      //   'Logout',
                      //   style: TextStyle(
                      //       color: Colors.white, fontSize: 25.0),
                      // )
                    )),
                    Center(
                        child: Padding(
                            padding: const EdgeInsets.only(top: 250),
                            child: FloatingActionButton.extended(
                              icon: Icon(Icons.arrow_back, color: Colors.white),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              label: Text(
                                'back',
                                style: TextStyle(fontSize: 20),
                              ),
                              backgroundColor: Colors.redAccent[700],
                            )))
                  ])),
              // Notificationss(),
            ],
          ),
        ),
      ),
    );
  }
}
