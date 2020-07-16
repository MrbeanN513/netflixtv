// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:kandy/TV/BANGLA.dart';
// import 'package:kandy/TV/BOLLYWOOD.dart';
// import 'package:kandy/TV/ENGLISH.dart';
// import 'package:kandy/login/services/authentication.dart';
// import 'package:kandy/TV/HINDI_DUBBED.dart';
// import 'package:kandy/TV/SOUTH.dart';

// class Tvshow extends StatefulWidget {
//   Tvshow({Key key, this.auth, this.userId, this.logoutCallback, this.title})
//       : super(key: key);

//   final String title;
//   final BaseAuth auth;
//   final VoidCallback logoutCallback;
//   final String userId;

//   @override
//   _TvshowState createState() => _TvshowState();
// }

// class _TvshowState extends State<Tvshow> {
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
//         child: PageView(physics:new NeverScrollableScrollPhysics(),
//           controller: _pageController,
//           onPageChanged: (index) {
//             setState(() => _currentIndex = index);
//           },
//           children: <Widget>[
//             ///////////////////////////////////////////////////////////////////////

//             TV_HINDI_DUBBED(),
//             TV_ENGLISH(),
//             TV_HINDI(),
//             TV_SOUTH(),
//             TV_BANGLA(),

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
//             Container(
//               color: Colors.yellow,
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavyBar(
//         backgroundColor: Colors.black,
//         containerHeight: 50.0,
//         selectedIndex: _currentIndex,
//         onItemSelected: (index) {
//           setState(() => _currentIndex = index);
//           _pageController.jumpToPage(index);
//         },
//         items: <BottomNavyBarItem>[
//           BottomNavyBarItem(
//               activeColor: Colors.redAccent[700],
//               inactiveColor: Colors.grey,
//               title: Text('DUBBED'),
//               icon: Icon(Icons.local_movies)),
//           BottomNavyBarItem(
//               activeColor: Colors.redAccent[700],
//               inactiveColor: Colors.grey,
//               title: Text('ENGLISH'),
//               icon: Icon(Icons.movie)),
//           BottomNavyBarItem(
//               activeColor: Colors.redAccent[700],
//               inactiveColor: Colors.grey,
//               title: Text('HINDI'),
//               icon: Icon(Icons.movie_filter)),
//           BottomNavyBarItem(
//               activeColor: Colors.redAccent[700],
//               inactiveColor: Colors.grey,
//               title: Text('TV_SOUTH'),
//               icon: Icon(Icons.ondemand_video)),
//           BottomNavyBarItem(
//               activeColor: Colors.redAccent[700],
//               inactiveColor: Colors.grey,
//               title: Text('TV_BANGLA'),
//               icon: Icon(Icons.music_video)),
//         ],
//       ),
//     );
//   }
// }
