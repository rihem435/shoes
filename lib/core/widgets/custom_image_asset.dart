import 'package:flutter/material.dart';

class CustomImageAsset extends StatelessWidget {
  final String? nameImage;
  final double? width;
  final double? height;
  const CustomImageAsset({Key? key, this.nameImage, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$nameImage",
      width: width,
      height: height,
    );
  }
}
