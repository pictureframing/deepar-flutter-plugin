import 'dart:ui';

/// Available resolutions to render.
enum Resolution {
  low,
  lowPortrait,
  medium,
  mediumPortrait,
  high,
  highPortrait,
  veryHigh,
  veryHighPortrait,
}

/// @nodoc
extension StringOperators on Resolution {
  String get stringValue {
    return <Resolution, String>{
      Resolution.low: "low",
      Resolution.lowPortrait: "lowPortrait",
      Resolution.medium: "medium",
      Resolution.mediumPortrait: "mediumPortrait",
      Resolution.high: "high",
      Resolution.highPortrait: "highPortrait",
      Resolution.veryHigh: "veryHigh",
      Resolution.veryHighPortrait: "veryHighPortrait",
    }[this]!;
  }
}

/// @nodoc
String enumToString(Resolution o) => o.toString().split('.').last;

/// @nodoc
Resolution enumFromString<T>(String key) =>
    Resolution.values.firstWhere((v) => key == enumToString(v), orElse: () => Resolution.low);

/// @nodoc
Size iOSImageSizeFromResolution(Resolution resolution) {
  switch (resolution) {
    case Resolution.low:
      return const Size(640, 480);

    case Resolution.lowPortrait:
      return const Size(480, 640);

    case Resolution.medium:
      return const Size(640, 480);

    case Resolution.mediumPortrait:
      return const Size(480, 640);

    case Resolution.high:
      return const Size(1280, 720);

    case Resolution.highPortrait:
      return const Size(720, 1280);

    case Resolution.veryHigh:
      return const Size(1920, 1080);

    case Resolution.veryHighPortrait:
      return const Size(1080, 1920);
  }
}
