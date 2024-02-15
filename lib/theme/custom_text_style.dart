import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallRed500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red500,
        fontSize: 10.fSize,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  // Label text style
  static get labelLargeIndigo900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  static get labelSmallDeeppurpleA200 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.deepPurpleA200.withOpacity(0.3),
      );
}

extension on TextStyle {
  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }
}
