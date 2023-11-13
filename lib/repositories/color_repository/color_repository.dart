import 'package:flutter/material.dart';

abstract class ColorRepository {
  void setColor(Color color);

  Stream<Color> get getColorStream;
}
