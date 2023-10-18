import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pin_input/otp_form.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isLightTheme = true;

  void toggleTheme() {
    setState(() => isLightTheme = !isLightTheme);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xffabcdef),
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xffd02a24),
      ),
      themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,
      home: OtpForm(
        isLightTheme: isLightTheme,
        toggleTheme: toggleTheme,
      ),
    );
  }
}
