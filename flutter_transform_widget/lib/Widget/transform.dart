import 'package:flutter/material.dart';
import 'dart:math';

class TransformPage extends StatefulWidget {
  const TransformPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<TransformPage> createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Transform.rotate(
              angle: -45 * (pi / 180.0),
              child: ElevatedButton(
                child: const Text("Rotated button"),
                onPressed: () {},
              ),
            ),
            Transform(
              transform: Matrix4.rotationZ(-45 * (pi / 180.0)),
              alignment: Alignment.center,
              child: ElevatedButton(
                child: const Text("Rotated button"),
                onPressed: () {},
              ),
            ),
            Transform.scale(
              scale: 2.0,
              child: ElevatedButton(
                child: const Text("scaled up"),
                onPressed: () {},
              ),
            ),
            Transform(
              transform: Matrix4.identity()..scale(2.0, 2.0),
              alignment: Alignment.center,
              child: ElevatedButton(
                child: const Text("scaled up (matrix)"),
                onPressed: () {},
              ),
            ),
            Transform.translate(
              offset: const Offset(100, 300),
              child: ElevatedButton(
                child: const Text("translated to bottom"),
                onPressed: () {},
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(100, 300, 0),
              child: ElevatedButton(
                child: const Text("translated to bottom (matrix)"),
                onPressed: () {},
              ),
            ),
            Transform.translate(
              offset: const Offset(70, 200),
              child: Transform.rotate(
                angle: -45 * (pi / 180.0),
                child: Transform.scale(
                  scale: 2.0,
                  child: ElevatedButton(
                    child: const Text("multiple transformations"),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.translationValues(70, 200, 0)
                ..rotateZ(-45 * (pi / 180.0))
                ..scale(2.0, 2.0),
              child: ElevatedButton(
                child: const Text("multiple transformations (matrix)"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
