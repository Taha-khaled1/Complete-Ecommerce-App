import 'package:flutter/material.dart';

Positioned images(left, top, imag) {
  return Positioned(
    left: left,
    top: top,
    child: Image.asset('$imag'),
  );
}
