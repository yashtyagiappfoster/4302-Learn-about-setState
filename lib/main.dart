import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  int currentImageIndex = 0;

  List<String> imagePaths = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'setState Demo',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('setState Demo'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(imagePaths[currentImageIndex],
                        width: 250, height: 250),
                    Text('Count Value : ${count}'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentImageIndex =
                              (currentImageIndex + 1) % imagePaths.length;
                        });
                      },
                      child: const Text('Change Image'),
                    ),
                    TextButton(
                      onPressed: () {
                        count++;
                        setState(() {});
                      },
                      child: const Text('Increase Value'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
