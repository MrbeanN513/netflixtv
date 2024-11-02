// import 'package:flutter/material.dart';
// import 'dart:async';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => new _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   startTime() async {
//     var _duration = new Duration(seconds: 4);
//     return new Timer(_duration, navigationPage);
//   }

//   void navigationPage() {
//     Navigator.of(context).pushReplacementNamed('/RootPage');
//   }

//   @override
//   void initState() {
//     super.initState();
//     startTime();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(children: <Widget>[
//         Center(child: new Image.asset('images/launch_image.png')),
//         Padding(
//           padding: const EdgeInsets.only(top: 250.0),
//           child: Center(
//             child: Container(
//               width: 500,
//               child: Align(
//                 alignment: Alignment.center,
//                 child: CircularProgressIndicator(
//                   valueColor:
//                       new AlwaysStoppedAnimation<Color>(Colors.redAccent[700]),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }
