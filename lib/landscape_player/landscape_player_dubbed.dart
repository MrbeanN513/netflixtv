// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:video_player/video_player.dart';

// import 'landscape_player_controls.dart';

// class LandscapePlayer_HINDI_DUBBED_a extends StatefulWidget {
//   final DocumentSnapshot HINDI_DUBBED;
//   LandscapePlayer_HINDI_DUBBED_a({this.HINDI_DUBBED});
//   // LandscapePlayer_HINDI_DUBBED_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_HINDI_DUBBED_aState createState() =>
//       _LandscapePlayer_HINDI_DUBBED_aState();
// }

// class _LandscapePlayer_HINDI_DUBBED_aState
//     extends State<LandscapePlayer_HINDI_DUBBED_a> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.HINDI_DUBBED.data['aa'];
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

// class LandscapePlayer_HINDI_DUBBED_b extends StatefulWidget {
//   final DocumentSnapshot HINDI_DUBBED;
//   LandscapePlayer_HINDI_DUBBED_b({this.HINDI_DUBBED});
//   // LandscapePlayer_HINDI_DUBBED_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_HINDI_DUBBED_bState createState() =>
//       _LandscapePlayer_HINDI_DUBBED_bState();
// }

// class _LandscapePlayer_HINDI_DUBBED_bState
//     extends State<LandscapePlayer_HINDI_DUBBED_b> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.HINDI_DUBBED.data['bb'];
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

// class LandscapePlayer_HINDI_DUBBED_c extends StatefulWidget {
//   final DocumentSnapshot HINDI_DUBBED;
//   LandscapePlayer_HINDI_DUBBED_c({this.HINDI_DUBBED});
//   // LandscapePlayer_HINDI_DUBBED_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_HINDI_DUBBED_cState createState() =>
//       _LandscapePlayer_HINDI_DUBBED_cState();
// }

// class _LandscapePlayer_HINDI_DUBBED_cState
//     extends State<LandscapePlayer_HINDI_DUBBED_c> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.HINDI_DUBBED.data['cc'];
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

// class LandscapePlayer_HINDI_DUBBED_d extends StatefulWidget {
//   final DocumentSnapshot HINDI_DUBBED;
//   LandscapePlayer_HINDI_DUBBED_d({this.HINDI_DUBBED});
//   // LandscapePlayer_HINDI_DUBBED_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_HINDI_DUBBED_dState createState() =>
//       _LandscapePlayer_HINDI_DUBBED_dState();
// }

// class _LandscapePlayer_HINDI_DUBBED_dState
//     extends State<LandscapePlayer_HINDI_DUBBED_d> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.HINDI_DUBBED.data['dd'];
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
