import 'package:flutter/material.dart';

class SampleExamScreen extends StatelessWidget {
  const SampleExamScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Probe Wissenscheck 4"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(radius: 80),
            ),
          ],
        ));
  }
}
