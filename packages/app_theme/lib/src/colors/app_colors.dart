import 'package:app_theme/src/tokens/tokens_light/colors.dart' as light_colors;
import 'package:app_theme/src/tokens/tokens_dark/colors.dart' as dark_colors;
import 'package:flutter/material.dart';

/// Available custom colors
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.colorPrimary,
    required this.buttonTextError,
    required this.buttonTextFocus,
    required this.buttonTextSuccess,
    required this.buttonTextOnButton,
    required this.buttonTextOnWarning,
    required this.buttonTextOnButtonDeactive,
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

  /// Text color for button error state
  final Color buttonTextError;

  /// Text color for button focus state
  final Color buttonTextFocus;

  /// Text color for button success state
  final Color buttonTextSuccess;

  /// Text color for on button state
  final Color buttonTextOnButton;

  /// Text color for warning state
  final Color buttonTextOnWarning;

  /// Text color for on button deactive state
  final Color buttonTextOnButtonDeactive;

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
      buttonTextError: textError ?? this.buttonTextError,
      buttonTextFocus: textFocus ?? this.buttonTextFocus,
      buttonTextSuccess: textSuccess ?? this.buttonTextSuccess,
      buttonTextOnButton: textOnButton ?? this.buttonTextOnButton,
      buttonTextOnWarning: textOnWarning ?? this.buttonTextOnWarning,
      buttonTextOnButtonDeactive:
          textOnButtonDeactive ?? this.buttonTextOnButtonDeactive,
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
      buttonTextError: Color.lerp(buttonTextError, other.buttonTextError, t) ??
          buttonTextError,
      buttonTextFocus: Color.lerp(buttonTextFocus, other.buttonTextFocus, t) ??
          buttonTextFocus,
      buttonTextSuccess:
          Color.lerp(buttonTextSuccess, other.buttonTextSuccess, t) ??
              buttonTextSuccess,
      buttonTextOnButton:
          Color.lerp(buttonTextOnButton, other.buttonTextOnButton, t) ??
              buttonTextOnButton,
      buttonTextOnWarning:
          Color.lerp(buttonTextOnWarning, other.buttonTextOnWarning, t) ??
              buttonTextOnWarning,
      buttonTextOnButtonDeactive: Color.lerp(buttonTextOnButtonDeactive,
              other.buttonTextOnButtonDeactive, t) ??
          buttonTextOnButtonDeactive,
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
      'textError: $buttonTextError, '
      'textFocus: $buttonTextFocus, '
      'textSuccess: $buttonTextSuccess, '
      'textOnButton: $buttonTextOnButton, '
      'textOnWarning: $buttonTextOnWarning, '
      'textOnButtonDeactive: $buttonTextOnButtonDeactive, '
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
    buttonTextError: light_colors.AppColors.buttonTextError,
    buttonTextFocus: light_colors.AppColors.buttonTextFocus,
    buttonTextSuccess: light_colors.AppColors.buttonTextSuccess,
    buttonTextOnButton: light_colors.AppColors.buttonTextOnButton,
    buttonTextOnWarning: light_colors.AppColors.buttonTextOnWarning,
    buttonTextOnButtonDeactive:
        light_colors.AppColors.buttonTextOnButtonDeactive,
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
    buttonTextError: dark_colors.AppColors.buttonTextError,
    buttonTextFocus: dark_colors.AppColors.buttonTextFocus,
    buttonTextSuccess: dark_colors.AppColors.buttonTextSuccess,
    buttonTextOnButton: dark_colors.AppColors.buttonTextOnButton,
    buttonTextOnWarning: dark_colors.AppColors.buttonTextOnWarning,
    buttonTextOnButtonDeactive:
        dark_colors.AppColors.buttonTextOnButtonDeactive,
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
