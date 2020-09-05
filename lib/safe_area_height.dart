import 'dart:async';

import 'package:flutter/services.dart';

class SafeAreaHeight {
  

  static Future<double> get safeAreaHeightTop async {
    static const MethodChannel _channel = const MethodChannel('safe_area_height');
    final double height = await _channel.invokeMethod('getSafeAreaHeightTop');
    return height;
  }

  static Future<double> get safeAreaHeightBottom async {
    static const MethodChannel _channel = const MethodChannel('safe_area_height');
    final double height = await _channel.invokeMethod('getSafeAreaHeightBottom');
    return height;
  }
}
