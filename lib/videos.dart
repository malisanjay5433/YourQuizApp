// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:video_player_controls/video_player_controls.dart';
// class Videos extends StatefulWidget {
//   Videos({this.title = 'Video player controls'});

//   final String title;

//   @override
//   State<StatefulWidget> createState() => _HomePageState();
// }

// class _HomePageState extends State<Videos> {
//   Controller controller;
//   @override
//   void initState() {
//     super.initState();
//     controller = new Controller(
//       items: [
//         new PlayerItem(
//           title: 'video 1',
//           url:
//               'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
//         ),
//         new PlayerItem(
//           startAt: Duration(seconds: 2),
//           title: 'video 2',
//           aspectRatio: 16 / 4,
//           url:
//               'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
//         ),
//         new PlayerItem(
//           title: 'video 3',
//           aspectRatio: 16 / 9,
//           url:
//               'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
//         ),
//       ],
//       autoPlay: true,
//       errorBuilder: (context, message) {
//         return new Container(
//           child: new Text(message),
//         );
//       },
//       // index: 2,
//       autoInitialize: true,
//       // isLooping: false,
//       allowedScreenSleep: true,
//       // showControls: false,
//       // hasSubtitles: true,
//       // isLive: true,
//       // showSeekButtons: false,
//       // showSkipButtons: false,
//       // allowFullScreen: false,
//       fullScreenByDefault: false,
//       // placeholder: new Container(
//       //   color: Colors.grey,
//       // ),
//       isPlaying: (isPlaying) {
//         //
//         // print(isPlaying);
//       },

//       playerItem: (playerItem) {
//         // print('Player title: ' + playerItem.title);
//         // print('position: ' + playerItem.position.inSeconds.toString());
//         // print('Duration: ' + playerItem.duration.inSeconds.toString());
//       },
//       videosCompleted: (isCompleted) {
//         print(isCompleted);
//       },
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: VideoPlayerControls(
//           controller: controller,
//         ),
//       ),
//     );
//   }
// }





// import 'package:video_player/video_player.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(Videos());

// class Videos extends StatefulWidget {
//   @override
//   _VideosState createState() => _VideosState();
// }

// class _VideosState extends State<Videos> {
//   VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//         'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
//       ..initialize().then((_) {
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Demo',
//       home: Scaffold(
//         body: Center(
//           child: _controller.value.initialized
//               ? AspectRatio(
//                   aspectRatio: _controller.value.aspectRatio,
//                   child: VideoPlayer(_controller),
//                 )
//               : Container(),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _controller.value.isPlaying
//                   ? _controller.pause()
//                   : _controller.play();
//             });
//           },
//           child: Icon(
//             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
