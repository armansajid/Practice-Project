import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Text "Welcome to First Screen"
          const Text(
            "Welcome to Second Screen",
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 50),
          //TextButton
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
                    Navigator.pop(context);
                  },
                  child: const Text("Back to First Screen"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
