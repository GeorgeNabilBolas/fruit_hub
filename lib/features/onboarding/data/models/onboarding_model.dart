import 'package:flutter/material.dart';

class OnboardingModel {
  const OnboardingModel({
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.description,
  });

  final String image;
  final String backgroundImage;
  final Widget title;
  final String description;
}
