import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimensions {
  static SizedBox get gapW4 => SizedBox(width: 4.w);
  static SizedBox get gapW8 => SizedBox(width: 8.w);
  static SizedBox get gapW12 => SizedBox(width: 12.w);
  static SizedBox get gapW16 => SizedBox(width: 16.w);
  static SizedBox get gapW20 => SizedBox(width: 20.w);
  static SizedBox get gapW24 => SizedBox(width: 24.w);
  static SizedBox get gapW64 => SizedBox(width: 64.w);

  static SizedBox get gapH4 => SizedBox(height: 4.h);
  static SizedBox get gapH8 => SizedBox(height: 8.h);
  static SizedBox get gapH12 => SizedBox(height: 12.h);
  static SizedBox get gapH16 => SizedBox(height: 16.h);
  static SizedBox get gapH20 => SizedBox(height: 20.h);
  static SizedBox get gapH24 => SizedBox(height: 24.h);
  static SizedBox get gapH32 => SizedBox(height: 32.h);
  static SizedBox get gapH48 => SizedBox(height: 48.h);
  static SizedBox get gapH64 => SizedBox(height: 64.h);

  static EdgeInsets get paddingAll8 => const EdgeInsets.all(8.0);
  static EdgeInsets get paddingAll10 => const EdgeInsets.all(10.0);
  static EdgeInsets get paddingSymmetricH4 => const EdgeInsets.symmetric(horizontal: 4.0);
  static EdgeInsets get paddingSymmetricH8 => const EdgeInsets.symmetric(horizontal: 8.0);
  static EdgeInsets get paddingSymmetricH16 => const EdgeInsets.symmetric(horizontal: 16.0);
  static EdgeInsets get paddingSymmetricH20 => const EdgeInsets.symmetric(horizontal: 20.0);
  static EdgeInsets get paddingSymmetricH24 => const EdgeInsets.symmetric(horizontal: 24.0);
  static EdgeInsets get paddingSymmetricH32 => const EdgeInsets.symmetric(horizontal: 32.0);
  static EdgeInsets get paddingSymmetricH38 => const EdgeInsets.symmetric(horizontal: 38.0);
  static EdgeInsets get paddingSymmetricH40 => const EdgeInsets.symmetric(horizontal: 40.0);
  static EdgeInsets get paddingSymmetricH48 => const EdgeInsets.symmetric(horizontal: 48.0);

  static Radius get radius8 => const Radius.circular(8.0);
  static BorderRadius get borderRadius8 => BorderRadius.circular(8.0);

  static Radius get radius4 => const Radius.circular(4.0);
  static BorderRadius get borderRadius4 => BorderRadius.circular(4.0);

  static Radius get radius16 => const Radius.circular(16.0);
  static BorderRadius get borderRadius16 => BorderRadius.circular(16.0);

  static Radius get radius32 => const Radius.circular(32.0);
  static BorderRadius get borderRadius32 => BorderRadius.circular(32.0);

  static Radius get radius50 => const Radius.circular(50);
  static BorderRadius get borderRadius50 => BorderRadius.circular(50);
}
