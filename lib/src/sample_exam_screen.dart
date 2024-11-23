import 'package:flutter/material.dart';

class SampleExamScreen extends StatefulWidget {
  const SampleExamScreen({super.key});

  @override
  State<SampleExamScreen> createState() => _SampleExamScreenState();
}

class _SampleExamScreenState extends State<SampleExamScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool swapStart = true;
  bool swapEnd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Probe Wissenscheck 4"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child:
                      Image.asset(width: 200, height: 180, "assets/moon.png"),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: ListTile(
                    title: Text(
                      "Vorbereitung",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Auf den Wissenscheck 4",
                      style: TextStyle(color: Colors.white),
                    ),
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
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text("Durchführung",
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text("Des Wissenscheck 4",
                        style: TextStyle(color: Colors.white)),
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
                SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 45),
                    SizedBox(height: swapStart ? 10 : 0),
                    Icon(Icons.circle, color: Colors.green, size: 45),
                    SizedBox(height: swapStart ? 10 : 0),
                    Icon(Icons.star, color: Colors.blue, size: 45),
                  ],
                ),
                SizedBox(height: 180),
                TextButton(
                  onPressed: () {
                    setState(() {
                      swapStart = !swapStart;
                    });
                  },
                  child: Text("Swap"),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ));
  }
}
