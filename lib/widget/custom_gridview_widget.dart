import 'package:flutter/material.dart';

class CustomGridViewBuilder extends StatelessWidget {
  final Widget child;
  final int crossAxisCount;
  final double aspectRatio;

  const CustomGridViewBuilder({
    super.key,
    required this.child,
    required this.crossAxisCount,
    required this.aspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: aspectRatio,
        crossAxisCount: crossAxisCount,
      ),
      itemBuilder: (context, index) {
        return child;
      },
    );
  }
}
