import 'package:flutter/material.dart';

import '../tokens/tokens_light/text_styles.dart';

/// Available custom typography
abstract class AppTypography {
  /// Heading 1 style
  static TextStyle heading = AppTextStyles.heading1;

  /// Heading 2 style
  static TextStyle heading2 = AppTextStyles.heading2;

  /// Subtitle style
  static TextStyle subtitle = AppTextStyles.subtitle;

  /// Body L style
  static TextStyle bodyL = AppTextStyles.bodyL;

  /// Body M style
  static TextStyle bodyM = AppTextStyles.bodyM;

  /// Body S style
  static TextStyle bodyS = AppTextStyles.bodyS;

  /// Button L style
  static TextStyle buttonL = AppTextStyles.buttonL;

  /// Button M style
  static TextStyle buttonM = AppTextStyles.buttonM;

  /// Section style
  static TextStyle section = AppTextStyles.section;
}
