import 'package:flutter/material.dart';

@immutable
class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.appbarColor,
    required this.backgroundColor,
    required this.resendColor,
    required this.confirmColor,
  });

  final Color? appbarColor;
  final Color? backgroundColor;
  final Color? resendColor;
  final Color? confirmColor;

  @override
  MyColors copyWith(
      {Color? appbarColor,
      Color? backgroundColor,
      Color? resendColor,
      Color? confirmColor}) {
    return MyColors(
        appbarColor: appbarColor ?? this.appbarColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        resendColor: resendColor ?? this.resendColor,
        confirmColor: confirmColor ?? this.confirmColor);
  }

  @override
  MyColors lerp(
      MyColors? other, double t) {
    if (other is! MyColors) {
      return this;
    }

    return MyColors(
      appbarColor: Color.lerp(appbarColor, other.appbarColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      resendColor: Color.lerp(resendColor, other.resendColor, t),
      confirmColor: Color.lerp(confirmColor, other.confirmColor, t),
    );
  }
}
