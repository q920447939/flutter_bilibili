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

  $AssetImageBackgroundGen get background => const $AssetImageBackgroundGen();
  $AssetImageHomeGen get home => const $AssetImageHomeGen();
  $AssetImageIcosGen get icos => const $AssetImageIcosGen();
  $AssetImageLoginGen get login => const $AssetImageLoginGen();
}

class $AssetImageBackgroundGen {
  const $AssetImageBackgroundGen();

  /// File path: asset/image/background/grey.png
  AssetGenImage get grey =>
      const AssetGenImage('asset/image/background/grey.png');

  /// List of all assets
  List<AssetGenImage> get values => [grey];
}

class $AssetImageHomeGen {
  const $AssetImageHomeGen();

  /// File path: asset/image/home/TVMan.png
  AssetGenImage get tVMan => const AssetGenImage('asset/image/home/TVMan.png');

  /// File path: asset/image/home/barrage_open.png
  AssetGenImage get barrageOpen =>
      const AssetGenImage('asset/image/home/barrage_open.png');

  /// File path: asset/image/home/battery.png
  AssetGenImage get battery =>
      const AssetGenImage('asset/image/home/battery.png');

  $AssetImageHomeButtomNavigateGen get buttomNavigate =>
      const $AssetImageHomeButtomNavigateGen();

  /// File path: asset/image/home/enlarge.png
  AssetGenImage get enlarge =>
      const AssetGenImage('asset/image/home/enlarge.png');

  /// File path: asset/image/home/envolope.png
  AssetGenImage get envolope =>
      const AssetGenImage('asset/image/home/envolope.png');

  /// File path: asset/image/home/gamepad.png
  AssetGenImage get gamepad =>
      const AssetGenImage('asset/image/home/gamepad.png');

  /// File path: asset/image/home/likesong.png
  AssetGenImage get likesong =>
      const AssetGenImage('asset/image/home/likesong.png');

  /// File path: asset/image/home/mute_sound.png
  AssetGenImage get muteSound =>
      const AssetGenImage('asset/image/home/mute_sound.png');

  /// File path: asset/image/home/tab_bar_big_video.png
  AssetGenImage get tabBarBigVideo =>
      const AssetGenImage('asset/image/home/tab_bar_big_video.png');

  /// File path: asset/image/home/tab_bar_more_info.png
  AssetGenImage get tabBarMoreInfo =>
      const AssetGenImage('asset/image/home/tab_bar_more_info.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        tVMan,
        barrageOpen,
        battery,
        enlarge,
        envolope,
        gamepad,
        likesong,
        muteSound,
        tabBarBigVideo,
        tabBarMoreInfo
      ];
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

class $AssetImageHomeButtomNavigateGen {
  const $AssetImageHomeButtomNavigateGen();

  /// File path: asset/image/home/buttom_navigate/dynamic.png
  AssetGenImage get dynamic =>
      const AssetGenImage('asset/image/home/buttom_navigate/dynamic.png');

  /// File path: asset/image/home/buttom_navigate/home.png
  AssetGenImage get home =>
      const AssetGenImage('asset/image/home/buttom_navigate/home.png');

  /// File path: asset/image/home/buttom_navigate/my.png
  AssetGenImage get my =>
      const AssetGenImage('asset/image/home/buttom_navigate/my.png');

  /// File path: asset/image/home/buttom_navigate/shop_car.png
  AssetGenImage get shopCar =>
      const AssetGenImage('asset/image/home/buttom_navigate/shop_car.png');

  /// List of all assets
  List<AssetGenImage> get values => [dynamic, home, my, shopCar];
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
