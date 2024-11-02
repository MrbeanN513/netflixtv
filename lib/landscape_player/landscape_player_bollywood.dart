// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:video_player/video_player.dart';

// import 'landscape_player_controls.dart';

// class LandscapePlayer_BOLLYWOOD_a extends StatefulWidget {
//   final DocumentSnapshot BOLLYWOOD;
//   LandscapePlayer_BOLLYWOOD_a({this.BOLLYWOOD});
//   // LandscapePlayer_BOLLYWOOD_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_BOLLYWOOD_aState createState() =>
//       _LandscapePlayer_BOLLYWOOD_aState();
// }

// class _LandscapePlayer_BOLLYWOOD_aState
//     extends State<LandscapePlayer_BOLLYWOOD_a> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.BOLLYWOOD.data['aa'];
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

// class LandscapePlayer_BOLLYWOOD_b extends StatefulWidget {
//   final DocumentSnapshot BOLLYWOOD;
//   LandscapePlayer_BOLLYWOOD_b({this.BOLLYWOOD});
//   // LandscapePlayer_BOLLYWOOD_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_BOLLYWOOD_bState createState() =>
//       _LandscapePlayer_BOLLYWOOD_bState();
// }

// class _LandscapePlayer_BOLLYWOOD_bState
//     extends State<LandscapePlayer_BOLLYWOOD_b> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.BOLLYWOOD.data['bb'];
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

// class LandscapePlayer_BOLLYWOOD_c extends StatefulWidget {
//   final DocumentSnapshot BOLLYWOOD;
//   LandscapePlayer_BOLLYWOOD_c({this.BOLLYWOOD});
//   // LandscapePlayer_BOLLYWOOD_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_BOLLYWOOD_cState createState() =>
//       _LandscapePlayer_BOLLYWOOD_cState();
// }

// class _LandscapePlayer_BOLLYWOOD_cState
//     extends State<LandscapePlayer_BOLLYWOOD_c> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.BOLLYWOOD.data['cc'];
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

// class LandscapePlayer_BOLLYWOOD_d extends StatefulWidget {
//   final DocumentSnapshot BOLLYWOOD;
//   LandscapePlayer_BOLLYWOOD_d({this.BOLLYWOOD});
//   // LandscapePlayer_BOLLYWOOD_a({Key key}) : super(key: key);

//   @override
//   _LandscapePlayer_BOLLYWOOD_dState createState() =>
//       _LandscapePlayer_BOLLYWOOD_dState();
// }

// class _LandscapePlayer_BOLLYWOOD_dState
//     extends State<LandscapePlayer_BOLLYWOOD_d> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.BOLLYWOOD.data['dd'];
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
