import 'package:flutter/material.dart';
import 'package:sample_exam_4/src/config/app_theme.dart';
import 'package:sample_exam_4/src/sample_exam_screen.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SampleExamScreen(),
      themeMode: ThemeMode.dark,
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
