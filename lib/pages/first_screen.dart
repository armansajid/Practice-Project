import 'package:flutter/material.dart';
import 'package:assignment2/pages/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Welcome to my App",
              style: TextStyle(fontSize: 18, color: Colors.blueGrey),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                  //TextButton "Next Screen"
                  TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NextScreen()),
                      );
                    },
                    child: const Text("Next Screen"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
