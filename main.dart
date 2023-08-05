import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mri_scanner_app/screens/camera_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(firstCamera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription firstCamera;

  const MyApp({required this.firstCamera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MRI Scanner App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CameraScreen(camera: firstCamera),
    );
  }
}

