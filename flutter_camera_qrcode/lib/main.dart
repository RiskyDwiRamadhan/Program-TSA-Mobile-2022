import 'package:flutter/material.dart';
import 'widget/camera.dart';
import 'widget/qr_code.dart';
import 'package:camera/camera.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  late final CameraDescription firstCamera;
  Future<void> camera() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Camera dan QRCode")),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const QRCode(),
                  ));
                },
                child: const Text("QRCode"),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  camera();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TakePictureScreen(
                      camera: this.firstCamera,
                    ),
                  ));
                },
                child: const Text("Camera"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
