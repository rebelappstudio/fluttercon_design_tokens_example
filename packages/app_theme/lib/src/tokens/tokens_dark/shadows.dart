import 'package:flutter/material.dart';

class AppShadows {
  static const shadowLg = BoxShadow(
    color: Color(0x1a000000),
    offset: Offset(0, 4),
    blurRadius: 6,
    spreadRadius: -4,
  );

  static const shadowMd = BoxShadow(
    color: Color(0x1a000000),
    offset: Offset(0, 2),
    blurRadius: 4,
    spreadRadius: -2,
  );

  static const shadowSm = BoxShadow(
    color: Color(0x1a000000),
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: -1,
  );

  static const shadowXl = BoxShadow(
    color: Color(0x1a000000),
    offset: Offset(0, 8),
    blurRadius: 10,
    spreadRadius: -6,
  );

  static const shadowXs = BoxShadow(
    color: Color(0x0d000000),
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );

  static const shadow2Xl = BoxShadow(
    color: Color(0x40000000),
    offset: Offset(0, 25),
    blurRadius: 50,
    spreadRadius: -12,
  );

  static const shadowInner = BoxShadow(
    color: Color(0x0d000000),
    offset: Offset(0, 2),
    blurRadius: 4,
    spreadRadius: 0,
  );

  AppShadows._();
}
