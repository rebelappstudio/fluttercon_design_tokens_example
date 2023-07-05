import 'package:flutter/material.dart';

import 'package:app_theme/src/tokens/tokens_light/text_styles.dart'
    as light_text_styles;
import 'package:app_theme/src/tokens/tokens_dark/text_styles.dart'
    as dark_text_styles;

/// Available custom typography
@immutable
class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography({
    required this.heading1,
    required this.heading2,
    required this.subtitle,
    required this.bodyL,
    required this.bodyM,
    required this.bodyS,
    required this.buttonL,
    required this.buttonM,
    required this.section,
  });

  /// Heading 1 style
  final TextStyle heading1;

  /// Heading 2 style
  final TextStyle heading2;

  /// Subtitle style
  final TextStyle subtitle;

  /// Body L style
  final TextStyle bodyL;

  /// Body M style
  final TextStyle bodyM;

  /// Body S style
  final TextStyle bodyS;

  /// Button L style
  final TextStyle buttonL;

  /// Button M style
  final TextStyle buttonM;

  /// Section style
  final TextStyle section;

  @override
  AppTypography copyWith({
    TextStyle? heading,
    TextStyle? heading2,
    TextStyle? subtitle,
    TextStyle? bodyL,
    TextStyle? bodyM,
    TextStyle? bodyS,
    TextStyle? buttonL,
    TextStyle? buttonM,
    TextStyle? section,
  }) {
    return AppTypography(
      heading1: heading ?? this.heading1,
      heading2: heading2 ?? this.heading2,
      subtitle: subtitle ?? this.subtitle,
      bodyL: bodyL ?? this.bodyL,
      bodyM: bodyM ?? this.bodyM,
      bodyS: bodyS ?? this.bodyS,
      buttonL: buttonL ?? this.buttonL,
      buttonM: buttonM ?? this.buttonM,
      section: section ?? this.section,
    );
  }

  // Controls how the properties change on theme changes
  @override
  AppTypography lerp(ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      heading1: TextStyle.lerp(heading1, other.heading1, t) ?? heading1,
      heading2: TextStyle.lerp(heading2, other.heading2, t) ?? heading2,
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t) ?? subtitle,
      bodyL: TextStyle.lerp(bodyL, other.bodyL, t) ?? bodyL,
      bodyM: TextStyle.lerp(bodyM, other.bodyM, t) ?? bodyM,
      bodyS: TextStyle.lerp(bodyS, other.bodyS, t) ?? bodyS,
      buttonL: TextStyle.lerp(buttonL, other.buttonL, t) ?? buttonL,
      buttonM: TextStyle.lerp(buttonM, other.buttonM, t) ?? buttonM,
      section: TextStyle.lerp(section, other.section, t) ?? section,
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'AppTypography('
      'heading1: $heading1, '
      'heading2: $heading2, '
      'subtitle: $subtitle, '
      'bodyL: $bodyL, '
      'bodyM: $bodyM, '
      'bodyS: $bodyS, '
      'buttonL: $buttonL, '
      'buttonM: $buttonM, '
      'section: $section, '
      ')';

  static AppTypography fromContext(BuildContext context) {
    return Theme.of(context).extension<AppTypography>() ?? AppTypography.light;
  }

  static const light = AppTypography(
    heading1: light_text_styles.AppTextStyles.heading1,
    heading2: light_text_styles.AppTextStyles.heading2,
    subtitle: light_text_styles.AppTextStyles.subtitle,
    bodyL: light_text_styles.AppTextStyles.bodyL,
    bodyM: light_text_styles.AppTextStyles.bodyM,
    bodyS: light_text_styles.AppTextStyles.bodyS,
    buttonL: light_text_styles.AppTextStyles.buttonL,
    buttonM: light_text_styles.AppTextStyles.buttonM,
    section: light_text_styles.AppTextStyles.section,
  );

  static const dark = AppTypography(
    heading1: dark_text_styles.AppTextStyles.heading1,
    heading2: dark_text_styles.AppTextStyles.heading2,
    subtitle: dark_text_styles.AppTextStyles.subtitle,
    bodyL: dark_text_styles.AppTextStyles.bodyL,
    bodyM: dark_text_styles.AppTextStyles.bodyM,
    bodyS: dark_text_styles.AppTextStyles.bodyS,
    buttonL: dark_text_styles.AppTextStyles.buttonL,
    buttonM: dark_text_styles.AppTextStyles.buttonM,
    section: dark_text_styles.AppTextStyles.section,
  );
}
