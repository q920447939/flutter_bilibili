/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetImageGen {
  const $AssetImageGen();

  $AssetImageIcosGen get icos => const $AssetImageIcosGen();
  $AssetImageLoginGen get login => const $AssetImageLoginGen();
}

class $AssetImageIcosGen {
  const $AssetImageIcosGen();

  /// File path: asset/image/icos/login.png
  AssetGenImage get login => const AssetGenImage('asset/image/icos/login.png');

  /// File path: asset/image/icos/register.png
  AssetGenImage get register =>
      const AssetGenImage('asset/image/icos/register.png');

  /// List of all assets
  List<AssetGenImage> get values => [login, register];
}

class $AssetImageLoginGen {
  const $AssetImageLoginGen();

  $AssetImageLoginCenterGen get center => const $AssetImageLoginCenterGen();
  $AssetImageLoginCloseGen get close => const $AssetImageLoginCloseGen();
  $AssetImageLoginOpenGen get open => const $AssetImageLoginOpenGen();
}

class $AssetImageLoginCenterGen {
  const $AssetImageLoginCenterGen();

  /// File path: asset/image/login/center/bili_logo.png
  AssetGenImage get biliLogo =>
      const AssetGenImage('asset/image/login/center/bili_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [biliLogo];
}

class $AssetImageLoginCloseGen {
  const $AssetImageLoginCloseGen();

  /// File path: asset/image/login/close/close_eye_left.png
  AssetGenImage get closeEyeLeft =>
      const AssetGenImage('asset/image/login/close/close_eye_left.png');

  /// File path: asset/image/login/close/close_eye_right.png
  AssetGenImage get closeEyeRight =>
      const AssetGenImage('asset/image/login/close/close_eye_right.png');

  /// List of all assets
  List<AssetGenImage> get values => [closeEyeLeft, closeEyeRight];
}

class $AssetImageLoginOpenGen {
  const $AssetImageLoginOpenGen();

  /// File path: asset/image/login/open/open_eye_left.png
  AssetGenImage get openEyeLeft =>
      const AssetGenImage('asset/image/login/open/open_eye_left.png');

  /// File path: asset/image/login/open/open_eye_right.png
  AssetGenImage get openEyeRight =>
      const AssetGenImage('asset/image/login/open/open_eye_right.png');

  /// List of all assets
  List<AssetGenImage> get values => [openEyeLeft, openEyeRight];
}

class Assets {
  Assets._();

  static const $AssetImageGen image = $AssetImageGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
