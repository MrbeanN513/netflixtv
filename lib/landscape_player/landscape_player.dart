import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import 'landscape_player_controls.dart';

class LandscapePlayer_BANGLA_a extends StatefulWidget {
  final DocumentSnapshot BANGLA;
  LandscapePlayer_BANGLA_a({this.BANGLA});
  // LandscapePlayer_BANGLA_a({Key key}) : super(key: key);

  @override
  _LandscapePlayer_BANGLA_aState createState() =>
      _LandscapePlayer_BANGLA_aState();
}

class _LandscapePlayer_BANGLA_aState extends State<LandscapePlayer_BANGLA_a> {
  FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    String str = widget.BANGLA.data['aa'];
    String result = str.replaceAll("vlc://", "");

    flickManager = FlickManager(
        autoInitialize: true,
        autoPlay: true,
        videoPlayerController: VideoPlayerController.network(result));
    // "https://github.com/intel-iot-devkit/sample-videos/blob/master/bottle-detection.mp4?raw=true"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlickVideoPlayer(
        flickManager: flickManager,
        preferredDeviceOrientation: [
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft
        ],
        systemUIOverlay: [],
        flickVideoWithControls: FlickVideoWithControls(
          controls: LandscapePlayerControls(),
        ),
      ),
    );
  }
}

class LandscapePlayer_BANGLA_b extends StatefulWidget {
  final DocumentSnapshot BANGLA;
  LandscapePlayer_BANGLA_b({this.BANGLA});
  // LandscapePlayer_BANGLA_a({Key key}) : super(key: key);

  @override
  _LandscapePlayer_BANGLA_bState createState() =>
      _LandscapePlayer_BANGLA_bState();
}

class _LandscapePlayer_BANGLA_bState extends State<LandscapePlayer_BANGLA_b> {
  FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    String str = widget.BANGLA.data['bb'];
    String result = str.replaceAll("vlc://", "");

    flickManager = FlickManager(
        autoInitialize: true,
        autoPlay: true,
        videoPlayerController: VideoPlayerController.network(result));
    // "https://github.com/intel-iot-devkit/sample-videos/blob/master/bottle-detection.mp4?raw=true"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlickVideoPlayer(
        flickManager: flickManager,
        preferredDeviceOrientation: [
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft
        ],
        systemUIOverlay: [],
        flickVideoWithControls: FlickVideoWithControls(
          controls: LandscapePlayerControls(),
        ),
      ),
    );
  }
}

class LandscapePlayer_BANGLA_c extends StatefulWidget {
  final DocumentSnapshot BANGLA;
  LandscapePlayer_BANGLA_c({this.BANGLA});
  // LandscapePlayer_BANGLA_a({Key key}) : super(key: key);

  @override
  _LandscapePlayer_BANGLA_cState createState() =>
      _LandscapePlayer_BANGLA_cState();
}

class _LandscapePlayer_BANGLA_cState extends State<LandscapePlayer_BANGLA_c> {
  FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    String str = widget.BANGLA.data['cc'];
    String result = str.replaceAll("vlc://", "");

    flickManager = FlickManager(
        autoInitialize: true,
        autoPlay: true,
        videoPlayerController: VideoPlayerController.network(result));
    // "https://github.com/intel-iot-devkit/sample-videos/blob/master/bottle-detection.mp4?raw=true"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlickVideoPlayer(
        flickManager: flickManager,
        preferredDeviceOrientation: [
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft
        ],
        systemUIOverlay: [],
        flickVideoWithControls: FlickVideoWithControls(
          controls: LandscapePlayerControls(),
        ),
      ),
    );
  }
}

class LandscapePlayer_BANGLA_d extends StatefulWidget {
  final DocumentSnapshot BANGLA;
  LandscapePlayer_BANGLA_d({this.BANGLA});
  // LandscapePlayer_BANGLA_a({Key key}) : super(key: key);

  @override
  _LandscapePlayer_BANGLA_dState createState() =>
      _LandscapePlayer_BANGLA_dState();
}

class _LandscapePlayer_BANGLA_dState extends State<LandscapePlayer_BANGLA_d> {
  FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    String str = widget.BANGLA.data['dd'];
    String result = str.replaceAll("vlc://", "");

    flickManager = FlickManager(
        autoInitialize: true,
        autoPlay: true,
        videoPlayerController: VideoPlayerController.network(result));
    // "https://github.com/intel-iot-devkit/sample-videos/blob/master/bottle-detection.mp4?raw=true"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlickVideoPlayer(
        flickManager: flickManager,
        preferredDeviceOrientation: [
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft
        ],
        systemUIOverlay: [],
        flickVideoWithControls: FlickVideoWithControls(
          controls: LandscapePlayerControls(),
        ),
      ),
    );
  }
}
