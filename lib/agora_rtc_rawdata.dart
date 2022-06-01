import 'dart:async';

import 'package:flutter/services.dart';

class AgoraRtcRawdata {
  static const MethodChannel channel = const MethodChannel('agora_rtc_rawdata');

  static Future<void> registerAudioFrameObserver(int engineHandle) {
    return channel.invokeMethod('registerAudioFrameObserver', engineHandle);
  }

  static Future<void> unregisterAudioFrameObserver() {
    return channel.invokeMethod('unregisterAudioFrameObserver');
  }

  static Future<void> registerVideoFrameObserver(int engineHandle) {
    return channel.invokeMethod('registerVideoFrameObserver', engineHandle);
  }

  static Future<void> unregisterVideoFrameObserver() {
    return channel.invokeMethod('unregisterVideoFrameObserver');
  }
}
