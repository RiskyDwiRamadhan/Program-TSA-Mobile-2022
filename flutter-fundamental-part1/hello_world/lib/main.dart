import 'package:flutter/material.dart';
// import 'basic_widgets/text_widget.dart';
// import 'basic_widgets/image_widget.dart';
// import 'basic_widgets/loading_cupertino.dart';
// import 'basic_widgets/fab_widget.dart';
// import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/dialog_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyDialogWidget(),
      ),
    );
  }
}
