import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBestSallerColmunItems extends StatelessWidget {
  final double width;
  const ShimmerBestSallerColmunItems({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width * width,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey,
          ),
        ));
  }
}
