import 'package:app_theme/src/tokens/tokens_light/colors.dart' as light_colors;
import 'package:app_theme/src/tokens/tokens_dark/colors.dart' as dark_colors;
import 'package:flutter/material.dart';

/// Available custom colors
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.colorPrimary,
    required this.textError,
    required this.textFocus,
    required this.textSuccess,
    required this.textOnButton,
    required this.textOnWarning,
    required this.textOnButtonDeactive,
    required this.backgroundDefault,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
    required this.foregroundDimmed,
    required this.foregroundDefault,
    required this.foregroundSecondary,
    required this.foregroundDeactive,
    required this.foregroundOnPrimary,
  });

  /// Primary seed color for material theme 3
  final Color colorPrimary;

  /// Text color for error state
  final Color textError;

  /// Text color for focus state
  final Color textFocus;

  /// Text color for success state
  final Color textSuccess;

  /// Text color for on button state
  final Color textOnButton;

  /// Text color for warning state
  final Color textOnWarning;

  /// Text color for on button deactive state
  final Color textOnButtonDeactive;

  /// Default background color
  final Color backgroundDefault;

  /// Primary background color
  final Color backgroundPrimary;

  /// Secondary background color
  final Color backgroundSecondary;

  /// Tertiary background color
  final Color backgroundTertiary;

  /// Dimmed foreground color
  final Color foregroundDimmed;

  /// Default foreground color
  final Color foregroundDefault;

  /// Secondary foreground color
  final Color foregroundSecondary;

  /// Deactive foreground color
  final Color foregroundDeactive;

  /// On primary foreground color
  final Color foregroundOnPrimary;

  @override
  AppColors copyWith({
    Color? colorPrimary,
    Color? textError,
    Color? textFocus,
    Color? textSuccess,
    Color? textOnButton,
    Color? textOnWarning,
    Color? textOnButtonDeactive,
    Color? backgroundDefault,
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? backgroundTertiary,
    Color? foregroundDimmed,
    Color? foregroundDefault,
    Color? foregroundSecondary,
    Color? foregroundDeactive,
    Color? foregroundOnPrimary,
  }) {
    return AppColors(
      colorPrimary: colorPrimary ?? this.colorPrimary,
      textError: textError ?? this.textError,
      textFocus: textFocus ?? this.textFocus,
      textSuccess: textSuccess ?? this.textSuccess,
      textOnButton: textOnButton ?? this.textOnButton,
      textOnWarning: textOnWarning ?? this.textOnWarning,
      textOnButtonDeactive: textOnButtonDeactive ?? this.textOnButtonDeactive,
      backgroundDefault: backgroundDefault ?? this.backgroundDefault,
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
      foregroundDimmed: foregroundDimmed ?? this.foregroundDimmed,
      foregroundDefault: foregroundDefault ?? this.foregroundDefault,
      foregroundSecondary: foregroundSecondary ?? this.foregroundSecondary,
      foregroundDeactive: foregroundDeactive ?? this.foregroundDeactive,
      foregroundOnPrimary: foregroundOnPrimary ?? this.foregroundOnPrimary,
    );
  }

  // Controls how the properties change on theme changes
  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      colorPrimary:
          Color.lerp(colorPrimary, other.colorPrimary, t) ?? colorPrimary,
      textError: Color.lerp(textError, other.textError, t) ?? textError,
      textFocus: Color.lerp(textFocus, other.textFocus, t) ?? textFocus,
      textSuccess: Color.lerp(textSuccess, other.textSuccess, t) ?? textSuccess,
      textOnButton:
          Color.lerp(textOnButton, other.textOnButton, t) ?? textOnButton,
      textOnWarning:
          Color.lerp(textOnWarning, other.textOnWarning, t) ?? textOnWarning,
      textOnButtonDeactive:
          Color.lerp(textOnButtonDeactive, other.textOnButtonDeactive, t) ??
              textOnButtonDeactive,
      backgroundDefault:
          Color.lerp(backgroundDefault, other.backgroundDefault, t) ??
              backgroundDefault,
      backgroundPrimary:
          Color.lerp(backgroundPrimary, other.backgroundPrimary, t) ??
              backgroundPrimary,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t) ??
              backgroundSecondary,
      backgroundTertiary:
          Color.lerp(backgroundTertiary, other.backgroundTertiary, t) ??
              backgroundTertiary,
      foregroundDimmed:
          Color.lerp(foregroundDimmed, other.foregroundDimmed, t) ??
              foregroundDimmed,
      foregroundDefault:
          Color.lerp(foregroundDefault, other.foregroundDefault, t) ??
              foregroundDefault,
      foregroundSecondary:
          Color.lerp(foregroundSecondary, other.foregroundSecondary, t) ??
              foregroundSecondary,
      foregroundDeactive:
          Color.lerp(foregroundDeactive, other.foregroundDeactive, t) ??
              foregroundDeactive,
      foregroundOnPrimary:
          Color.lerp(foregroundOnPrimary, other.foregroundOnPrimary, t) ??
              foregroundOnPrimary,
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'AppColors('
      'colorBackgroundBase: $colorPrimary, '
      'textError: $textError, '
      'textFocus: $textFocus, '
      'textSuccess: $textSuccess, '
      'textOnButton: $textOnButton, '
      'textOnWarning: $textOnWarning, '
      'textOnButtonDeactive: $textOnButtonDeactive, '
      'backgroundDefault: $backgroundDefault, '
      'backgroundPrimary: $backgroundPrimary, '
      'backgroundSecondary: $backgroundSecondary, '
      'backgroundTertiary: $backgroundTertiary, '
      'foregroundDimmed: $foregroundDimmed, '
      'foregroundDefault: $foregroundDefault, '
      'foregroundSecondary: $foregroundSecondary, '
      'foregroundDeactive: $foregroundDeactive, '
      'foregroundOnPrimary: $foregroundOnPrimary, '
      ')';

  static AppColors fromContext(BuildContext context) {
    return Theme.of(context).extension<AppColors>() ?? AppColors.light;
  }

  /// The light theme
  static const light = AppColors(
    colorPrimary: light_colors.AppColors.backgroundPrimary,
    textError: light_colors.AppColors.textError,
    textFocus: light_colors.AppColors.textFocus,
    textSuccess: light_colors.AppColors.textSuccess,
    textOnButton: light_colors.AppColors.textOnButton,
    textOnWarning: light_colors.AppColors.textOnWarning,
    textOnButtonDeactive: light_colors.AppColors.textOnButtonDeactive,
    backgroundDefault: light_colors.AppColors.backgroundDefault,
    backgroundPrimary: light_colors.AppColors.backgroundPrimary,
    backgroundSecondary: light_colors.AppColors.background2nd,
    backgroundTertiary: light_colors.AppColors.background3rd,
    foregroundDimmed: light_colors.AppColors.foregroundDimmed,
    foregroundDefault: light_colors.AppColors.foregroundDefault,
    foregroundSecondary: light_colors.AppColors.foreground2nd,
    foregroundDeactive: light_colors.AppColors.foregroundDeactive,
    foregroundOnPrimary: light_colors.AppColors.foregroundOnPrimary,
  );

  /// The dark theme
  static const dark = AppColors(
    colorPrimary: dark_colors.AppColors.backgroundPrimary,
    textError: dark_colors.AppColors.textError,
    textFocus: dark_colors.AppColors.textFocus,
    textSuccess: dark_colors.AppColors.textSuccess,
    textOnButton: dark_colors.AppColors.textOnButton,
    textOnWarning: dark_colors.AppColors.textOnWarning,
    textOnButtonDeactive: dark_colors.AppColors.textOnButtonDeactive,
    backgroundDefault: dark_colors.AppColors.backgroundDefault,
    backgroundPrimary: dark_colors.AppColors.backgroundPrimary,
    backgroundSecondary: dark_colors.AppColors.background2nd,
    backgroundTertiary: dark_colors.AppColors.background3rd,
    foregroundDimmed: dark_colors.AppColors.foregroundDimmed,
    foregroundDefault: dark_colors.AppColors.foregroundDefault,
    foregroundSecondary: dark_colors.AppColors.foreground2nd,
    foregroundDeactive: dark_colors.AppColors.foregroundDeactive,
    foregroundOnPrimary: dark_colors.AppColors.foregroundOnPrimary,
  );
}
