// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:video_player/video_player.dart';

// import 'landscape_player_controls.dart';

// class LandscapePlayer_SOUTH_a extends StatefulWidget {
//   final DocumentSnapshot SOUTH;
//   LandscapePlayer_SOUTH_a({this.SOUTH});

//   @override
//   _LandscapePlayer_SOUTH_aState createState() =>
//       _LandscapePlayer_SOUTH_aState();
// }

// class _LandscapePlayer_SOUTH_aState extends State<LandscapePlayer_SOUTH_a> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.SOUTH.data['aa'];
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

// class LandscapePlayer_SOUTH_b extends StatefulWidget {
//   final DocumentSnapshot SOUTH;
//   LandscapePlayer_SOUTH_b({this.SOUTH});

//   @override
//   _LandscapePlayer_SOUTH_bState createState() =>
//       _LandscapePlayer_SOUTH_bState();
// }

// class _LandscapePlayer_SOUTH_bState extends State<LandscapePlayer_SOUTH_b> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.SOUTH.data['bb'];
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

// class LandscapePlayer_SOUTH_c extends StatefulWidget {
//   final DocumentSnapshot SOUTH;
//   LandscapePlayer_SOUTH_c({this.SOUTH});

//   @override
//   _LandscapePlayer_SOUTH_cState createState() =>
//       _LandscapePlayer_SOUTH_cState();
// }

// class _LandscapePlayer_SOUTH_cState extends State<LandscapePlayer_SOUTH_c> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.SOUTH.data['cc'];
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

// class LandscapePlayer_SOUTH_d extends StatefulWidget {
//   final DocumentSnapshot SOUTH;
//   LandscapePlayer_SOUTH_d({this.SOUTH});

//   @override
//   _LandscapePlayer_SOUTH_dState createState() =>
//       _LandscapePlayer_SOUTH_dState();
// }

// class _LandscapePlayer_SOUTH_dState extends State<LandscapePlayer_SOUTH_d> {
//   FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     String str = widget.SOUTH.data['dd'];
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
