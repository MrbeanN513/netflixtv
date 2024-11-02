// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:video_player/video_player.dart';

// import 'landscape_player_controls.dart';

// class LandscapePlayer_ENGLISH_a extends StatefulWidget {
//   final DocumentSnapshot ENGLISH;
//   LandscapePlayer_ENGLISH_a({this.ENGLISH});
//   // LandscapePlayer_ENGLISH_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_ENGLISH_aState createState() =>
//       _LandscapePlayer_ENGLISH_aState();
// }

// class _LandscapePlayer_ENGLISH_aState extends State<LandscapePlayer_ENGLISH_a> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.ENGLISH.data['aa'];
//     String result = str.replaceAll("vlc://", "");

//     flickManager = FlickManager(
//         autoInitialize: true,
//         autoPlay: true,
//         videoPlayerController: VideoPlayerController.network(result));
//     // "https://github.com/intel-iot-devkit/sample-videos/blob/master/bottle-detection.mp4?raw=true"));
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FlickVideoPlayer(
//         flickManager: flickManager,
//         preferredDeviceOrientation: [
//           DeviceOrientation.landscapeRight,
//           DeviceOrientation.landscapeLeft
//         ],
//         systemUIOverlay: [],
//         flickVideoWithControls: FlickVideoWithControls(
//           controls: LandscapePlayerControls(),
//         ),
//       ),
//     );
//   }
// }

// class LandscapePlayer_ENGLISH_b extends StatefulWidget {
//   final DocumentSnapshot ENGLISH;
//   LandscapePlayer_ENGLISH_b({this.ENGLISH});
//   // LandscapePlayer_ENGLISH_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_ENGLISH_bState createState() =>
//       _LandscapePlayer_ENGLISH_bState();
// }

// class _LandscapePlayer_ENGLISH_bState extends State<LandscapePlayer_ENGLISH_b> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.ENGLISH.data['bb'];
//     String result = str.replaceAll("vlc://", "");

//     flickManager = FlickManager(
//         autoInitialize: true,
//         autoPlay: true,
//         videoPlayerController: VideoPlayerController.network(result));
//     // "https://github.com/intel-iot-devkit/sample-videos/blob/master/bottle-detection.mp4?raw=true"));
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FlickVideoPlayer(
//         flickManager: flickManager,
//         preferredDeviceOrientation: [
//           DeviceOrientation.landscapeRight,
//           DeviceOrientation.landscapeLeft
//         ],
//         systemUIOverlay: [],
//         flickVideoWithControls: FlickVideoWithControls(
//           controls: LandscapePlayerControls(),
//         ),
//       ),
//     );
//   }
// }

// class LandscapePlayer_ENGLISH_c extends StatefulWidget {
//   final DocumentSnapshot ENGLISH;
//   LandscapePlayer_ENGLISH_c({this.ENGLISH});
//   // LandscapePlayer_ENGLISH_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_ENGLISH_cState createState() =>
//       _LandscapePlayer_ENGLISH_cState();
// }

// class _LandscapePlayer_ENGLISH_cState extends State<LandscapePlayer_ENGLISH_c> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.ENGLISH.data['cc'];
//     String result = str.replaceAll("vlc://", "");

//     flickManager = FlickManager(
//         autoInitialize: true,
//         autoPlay: true,
//         videoPlayerController: VideoPlayerController.network(result));
//     // "https://github.com/intel-iot-devkit/sample-videos/blob/master/bottle-detection.mp4?raw=true"));
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FlickVideoPlayer(
//         flickManager: flickManager,
//         preferredDeviceOrientation: [
//           DeviceOrientation.landscapeRight,
//           DeviceOrientation.landscapeLeft
//         ],
//         systemUIOverlay: [],
//         flickVideoWithControls: FlickVideoWithControls(
//           controls: LandscapePlayerControls(),
//         ),
//       ),
//     );
//   }
// }

// class LandscapePlayer_ENGLISH_d extends StatefulWidget {
//   final DocumentSnapshot ENGLISH;
//   LandscapePlayer_ENGLISH_d({this.ENGLISH});
//   // LandscapePlayer_ENGLISH_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_ENGLISH_dState createState() =>
//       _LandscapePlayer_ENGLISH_dState();
// }

// class _LandscapePlayer_ENGLISH_dState extends State<LandscapePlayer_ENGLISH_d> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.ENGLISH.data['dd'];
//     String result = str.replaceAll("vlc://", "");

//     flickManager = FlickManager(
//         autoInitialize: true,
//         autoPlay: true,
//         videoPlayerController: VideoPlayerController.network(result));
//     // "https://github.com/intel-iot-devkit/sample-videos/blob/master/bottle-detection.mp4?raw=true"));
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FlickVideoPlayer(
//         flickManager: flickManager,
//         preferredDeviceOrientation: [
//           DeviceOrientation.landscapeRight,
//           DeviceOrientation.landscapeLeft
//         ],
//         systemUIOverlay: [],
//         flickVideoWithControls: FlickVideoWithControls(
//           controls: LandscapePlayerControls(),
//         ),
//       ),
//     );
//   }
// }
