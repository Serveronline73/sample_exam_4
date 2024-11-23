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
                child: Image.asset(width: 200, height: 200, "assets/moon.png"),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ListTile(
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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ListTile(
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
              ),
              Column(
                children: [
                  Icon(Icons.favorite, color: Colors.red),
                  Icon(Icons.circle, color: Colors.green),
                  Icon(Icons.star, color: Colors.blue),
                ],
              )
            ],
          ),
        ));
  }
}
