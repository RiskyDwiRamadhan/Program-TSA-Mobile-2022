import 'package:flutter/material.dart';
// import 'basic_widgets/text_widget.dart';
// import 'basic_widgets/image_widget.dart';
// import 'basic_widgets/loading_cupertino.dart';
// import 'basic_widgets/fab_widget.dart';
import 'basic_widgets/scaffold_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyScaffoldWidget(title: 'Flutter Demo Scaffold Widget Page'),
    );
  }
}
