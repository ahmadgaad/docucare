// Custom painter for wide 45-degree slices
import 'dart:math' as math;

import 'package:flutter/material.dart';

class Wide45DegreeSlicesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    const sliceWidth = 250.0; // Wider slices
    final diagonal = math.sqrt(
      size.width * size.width + size.height * size.height,
    );

    for (double x = -diagonal; x < diagonal * 2; x += sliceWidth) {
      final path = Path()
        ..moveTo(x, -diagonal)
        ..lineTo(x + sliceWidth / 2, -diagonal)
        ..lineTo(x + sliceWidth / 2 + diagonal, diagonal)
        ..lineTo(x + diagonal, diagonal)
        ..close();

      // Rotate by 45 degrees and translate
      canvas.save();
      canvas.translate(size.width / 2, size.height / 2);
      canvas.rotate(math.pi / 4); // 45 degrees
      canvas.translate(-size.width / 2, -size.height / 2);

      paint.color = Colors.white.withValues(
        alpha: (x / sliceWidth).floor() % 2 == 0 ? 0.04 : 0.08,
      );
      canvas.drawPath(path, paint);

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
