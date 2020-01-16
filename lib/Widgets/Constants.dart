import 'package:flutter/material.dart';

BoxDecoration ContainerCurve() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ));
}
