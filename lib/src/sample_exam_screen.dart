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
        body: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage("assets/moon.png"),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text("Vorbereitung"),
                subtitle: Text("Auf den Wissenscheck 4"),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text("Durchführung"),
                subtitle: Text("Des Wissenscheck 4"),
              ),
            ],
          ),
        ));
  }
}
