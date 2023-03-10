import 'package:flutter/material.dart';

import '../utils/index.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    this.elevation = AppUtils.cardElevation,
    this.borderRadius = AppUtils.cardBorderRadius,
  });

  final Widget child;
  final double? elevation;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10)),
        child: child);
  }
}
