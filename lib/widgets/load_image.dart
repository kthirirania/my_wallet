import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LoadImage extends StatelessWidget {
  double width;
  double height;
  double padding;
  String imageUrl;
  double borderRadius;
  double imageBorderRadius;

  LoadImage(this.imageUrl, this.width, this.height, this.padding,
      this.borderRadius, this.imageBorderRadius);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
