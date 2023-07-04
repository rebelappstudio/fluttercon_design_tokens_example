import 'package:app_theme/src/tokens/tokens_light/dimensions.dart';

/// Available spacing values for app
abstract class AppSpacing {
  /// zero spacing value (1pt)
  static double zero = AppDimensions.spacingSizeZero.toDouble();

  /// tint spacing value (2pt)
  static double tiny = AppDimensions.spacingSizeTiny.toDouble();

  /// extra small spacing value (4pt)
  static double xSmall = AppDimensions.spacingSizeXSmall.toDouble();

  /// base spacing value (8pt)
  static double base = AppDimensions.spacingSizeBase.toDouble();

  /// small spacing value (12pt)
  static double small = AppDimensions.spacingSizeSmall.toDouble();

  /// normal  spacing value (16pt)
  static double normal = AppDimensions.spacingSizeNormal.toDouble();

  /// large spacing value (20pt)
  static double large = AppDimensions.spacingSizeLarge.toDouble();

  /// extra large spacing value (32pt)
  static double xLarge = AppDimensions.spacingSizeXLarge.toDouble();

  /// large spacing value (40pt)
  static double huge = AppDimensions.spacingSizeHuge.toDouble();
}
