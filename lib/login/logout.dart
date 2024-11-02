// import 'package:flutter/material.dart';
// import 'package:kandy/login/services/authentication.dart';

// class Logout extends StatefulWidget {
//   Logout({Key key, this.auth, this.userId, this.logoutCallback, this.title})
//       : super(key: key);

//   final String title;
//   final BaseAuth auth;
//   final VoidCallback logoutCallback;
//   final String userId;

//   @override
//   _LogoutState createState() => _LogoutState();
// }

// class _LogoutState extends State<Logout> {
//   signOut() async {
//     try {
//       await widget.auth.signOut();
//       widget.logoutCallback();
//     } catch (e) {
//       print(e);
//     }
//   }

//   int _currentIndex = 0;
//   PageController _pageController;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox.expand(
//         child: PageView(
//           physics: new NeverScrollableScrollPhysics(),
//           controller: _pageController,
//           onPageChanged: (index) {
//             setState(() => _currentIndex = index);
//           },
//           children: <Widget>[
//             ///////////////////////////////////////////////////////////////////////

//             Scaffold(
//                 backgroundColor: Colors.black,
//                 body: Center(
//                     child: FlatButton.icon(
//                         color: Colors.transparent,
//                         onPressed: signOut,
//                         icon: Icon(
//                           Icons.power_settings_new,
//                           color: Colors.redAccent[700],
//                         ),
//                         label: Text(
//                           'Logout',
//                           style: TextStyle(color: Colors.white, fontSize: 25.0),
//                         )))),
            
//           ],
//         ),
//       ),
//     );
//   }
// }
