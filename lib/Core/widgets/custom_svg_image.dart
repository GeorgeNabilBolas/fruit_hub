import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../constants/app_assets.dart';

/*
dependencies:
...
  vector_graphics: ^1.1.19
  vector_graphics_compiler: ^1.1.19
flutter:
  assets:
    - path: assets/images/
    - path: assets/svgs/
      transformers:
        - package: vector_graphics_compiler
*/
class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.fit,
    this.alignment,
    this.colorFilter,
    this.clipBehavior,
    this.clipViewbox,
    this.errorBuilder,
    this.excludeFromSemantics,
    this.matchTextDirection,
    this.opacity,
    this.placeholderBuilder,
    this.semanticsLabel,
    this.transitionDuration,
  });

  final String path;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Alignment? alignment;
  final ColorFilter? colorFilter;
  final Clip? clipBehavior;
  final bool? clipViewbox;
  final Widget Function(BuildContext, Object, StackTrace)? errorBuilder;
  final bool? excludeFromSemantics;
  final bool? matchTextDirection;
  final Animation<double>? opacity;
  final Widget Function(BuildContext)? placeholderBuilder;
  final String? semanticsLabel;
  final Duration? transitionDuration;

  @override
  Widget build(BuildContext context) {
    return VectorGraphic(
      loader: AssetBytesLoader(path),
      height: height,
      width: width,
      fit: fit ?? BoxFit.contain,
      alignment: alignment ?? Alignment.center,
      colorFilter: colorFilter,
      clipBehavior: clipBehavior ?? Clip.hardEdge,
      clipViewbox: clipViewbox ?? true,
      errorBuilder: errorBuilder,
      excludeFromSemantics: excludeFromSemantics ?? false,
      matchTextDirection: matchTextDirection ?? false,
      opacity: opacity,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      transitionDuration: transitionDuration,
    );
  }
}
