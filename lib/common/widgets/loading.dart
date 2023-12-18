import 'package:flutter/material.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingWidgets extends StatelessWidget {
  final double? size;
  final Color? color;
  const LoadingWidgets({super.key, this.size = 28, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 6),
        width: 60,
        height: 60,
        child: LoadingAnimationWidget.discreteCircle(
            color: const Color(0xFFF37B2D), size: 50));
  }
}
