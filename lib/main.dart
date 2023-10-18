import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pin_input/otp_form.dart';

import 'my_colors.dart';

void main() {
  timeDilation = 3;
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
      theme: ThemeData.light().copyWith(
        extensions: <ThemeExtension<dynamic>>[
          const MyColors(
            appbarColor: Color(0xff2196F3),
            backgroundColor: Color(0xffffffff),
            resendColor: Color(0xFFE53935),
            confirmColor: Color(0xFF1E88E5),),
        ],
      ),
      darkTheme: ThemeData.dark().copyWith(
        extensions: <ThemeExtension<dynamic>>[
          const MyColors(
              appbarColor: Color(0xff212121),
              backgroundColor: Color(0xff3f3f3f),
              resendColor: Color(0xFFEF9A9A),
              confirmColor: Color(0xFF90CAF9),),
        ],
      ),
      themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,
      home: OtpForm(
        isLightTheme: isLightTheme,
        toggleTheme: toggleTheme,
      ),
    );
  }
}
