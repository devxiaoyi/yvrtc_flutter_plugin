import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'yvrtc_plugin_platform_interface.dart';

/// An implementation of [YvrtcPluginPlatform] that uses method channels.
class MethodChannelYvrtcPlugin extends YvrtcPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('yvrtc_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
