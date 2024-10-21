import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _width = 50.0;
  double _height = 50.0;
  double _radius = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        centerTitle: true, // Шапка з текстом по центру
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Width: ', style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Slider(
                    value: _width,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        _width = value;
                      });
                    },
                  ),
                ),
                Text(_width.toStringAsFixed(2)),
              ],
            ),
            Row(
              children: [
                const Text('Height: ', style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Slider(
                    value: _height,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  ),
                ),
                Text(_height.toStringAsFixed(2)),
              ],
            ),
            Row(
              children: [
                const Text('Radius: ', style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Slider(
                    value: _radius,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        _radius = value;
                      });
                    },
                  ),
                ),
                Text(_radius.toStringAsFixed(2)),
              ],
            ),
            const SizedBox(height: 32),
            Center(
              child: Container(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(_radius),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
