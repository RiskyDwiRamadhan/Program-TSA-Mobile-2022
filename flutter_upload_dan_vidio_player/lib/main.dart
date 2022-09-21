import 'package:flutter/material.dart';
import 'package:flutter_upload_dan_vidio_player/widget/uploadfile.dart';
import 'package:flutter_upload_dan_vidio_player/widget/videoplayer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upload File',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VideoPlayerApp(),
    );
  }
}
