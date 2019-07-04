import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui show window,Window;

const double SCREEN_WIDTH = 375;

class ViewAdapter {

  static double screenWidth = SCREEN_WIDTH;

  static double getAdapterRatio() {
    return ui.window.physicalSize.width / screenWidth;
  }

  static Size getScreenAdapterSize() {
    return Size(SCREEN_WIDTH, ui.window.physicalSize.height / getAdapterRatio());
  }

  static MediaQueryData coposeMediaQueryData(ui.Window window) {
    var deviceRatio = getAdapterRatio();
    return MediaQueryData(
      size: window.physicalSize / deviceRatio,
      devicePixelRatio: deviceRatio,
      textScaleFactor: window.textScaleFactor,
      platformBrightness: window.platformBrightness,
      padding: EdgeInsets.fromWindowPadding(window.padding, deviceRatio),
      viewInsets: EdgeInsets.fromWindowPadding(window.viewInsets, deviceRatio),
      accessibleNavigation: window.accessibilityFeatures.accessibleNavigation,
      invertColors: window.accessibilityFeatures.invertColors,
      disableAnimations: window.accessibilityFeatures.disableAnimations,
      boldText: window.accessibilityFeatures.boldText,
      alwaysUse24HourFormat: window.alwaysUse24HourFormat);
  }
}