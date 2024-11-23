import 'package:flutter/material.dart';

class SampleExamScreen extends StatefulWidget {
  const SampleExamScreen({super.key});

  @override
  State<SampleExamScreen> createState() => _SampleExamScreenState();
}

class _SampleExamScreenState extends State<SampleExamScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;

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
                  radius: 100,
                  backgroundImage: AssetImage("assets/moon.png"),
                ),
              ),
              ListTile(
                title: Text("Vorbereitung"),
                subtitle: Text("Auf den Wissenscheck 4"),
                leading: Checkbox(
                  value: isChecked1,
                  activeColor: Colors.white,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked1 = newBool!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Durchführung"),
                subtitle: Text("Des Wissenscheck 4"),
                leading: Checkbox(
                  value: isChecked2,
                  activeColor: Colors.white,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked2 = newBool!;
                    });
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
