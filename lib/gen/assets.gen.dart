/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Arrow.png
  AssetGenImage get arrow => const AssetGenImage('assets/icons/Arrow.png');

  /// File path: assets/icons/Podcast.png
  AssetGenImage get podcast => const AssetGenImage('assets/icons/Podcast.png');

  /// File path: assets/icons/TV.png
  AssetGenImage get tv => const AssetGenImage('assets/icons/TV.png');

  /// File path: assets/icons/blue_pen.png
  AssetGenImage get bluePen => const AssetGenImage('assets/icons/blue_pen.png');

  /// File path: assets/icons/hashtagicon.png
  AssetGenImage get hashtagicon =>
      const AssetGenImage('assets/icons/hashtagicon.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/tv1.png
  AssetGenImage get tv1 => const AssetGenImage('assets/icons/tv1.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// File path: assets/icons/writer.png
  AssetGenImage get writer => const AssetGenImage('assets/icons/writer.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Anten.svg
  SvgGenImage get anten => const SvgGenImage('assets/images/Anten.svg');

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/book.png
  AssetGenImage get book => const AssetGenImage('assets/images/book.png');

  /// File path: assets/images/daaa.png
  AssetGenImage get daaa => const AssetGenImage('assets/images/daaa.png');

  /// File path: assets/images/ifilm.png
  AssetGenImage get ifilm => const AssetGenImage('assets/images/ifilm.png');

  /// File path: assets/images/mostanad.png
  AssetGenImage get mostanad =>
      const AssetGenImage('assets/images/mostanad.png');

  /// File path: assets/images/namayesh.png
  AssetGenImage get namayesh =>
      const AssetGenImage('assets/images/namayesh.png');

  /// File path: assets/images/nasim.png
  AssetGenImage get nasim => const AssetGenImage('assets/images/nasim.png');

  /// File path: assets/images/pooya.png
  AssetGenImage get pooya => const AssetGenImage('assets/images/pooya.png');

  /// File path: assets/images/posterTest.png
  AssetGenImage get posterTest =>
      const AssetGenImage('assets/images/posterTest.png');

  /// File path: assets/images/radio.png
  AssetGenImage get radio => const AssetGenImage('assets/images/radio.png');

  /// File path: assets/images/tac.png
  AssetGenImage get tac => const AssetGenImage('assets/images/tac.png');

  /// File path: assets/images/tamasha.png
  AssetGenImage get tamasha => const AssetGenImage('assets/images/tamasha.png');

  /// File path: assets/images/techbot.svg
  SvgGenImage get techbot => const SvgGenImage('assets/images/techbot.svg');

  /// File path: assets/images/tv1.png
  AssetGenImage get tv1 => const AssetGenImage('assets/images/tv1.png');

  /// File path: assets/images/tv2.png
  AssetGenImage get tv2 => const AssetGenImage('assets/images/tv2.png');

  /// File path: assets/images/tv3.png
  AssetGenImage get tv3 => const AssetGenImage('assets/images/tv3.png');

  /// File path: assets/images/tv4.png
  AssetGenImage get tv4 => const AssetGenImage('assets/images/tv4.png');

  /// File path: assets/images/tv5.png
  AssetGenImage get tv5 => const AssetGenImage('assets/images/tv5.png');

  /// File path: assets/images/tv_app.png
  AssetGenImage get tvApp => const AssetGenImage('assets/images/tv_app.png');

  /// File path: assets/images/varzesh.png
  AssetGenImage get varzesh => const AssetGenImage('assets/images/varzesh.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
