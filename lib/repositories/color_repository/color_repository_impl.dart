import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:state_machine/repositories/color_repository/color_repository.dart';

@Injectable(as: ColorRepository)
class ColorRepositoryImpl extends ColorRepository {
  ColorRepositoryImpl() {
    _init();
  }

  @override
  void setColor(Color color) {
    color = color;
    colorStreamControll.add(color);
  }

  void _init() async {
    colorStreamControll.onCancel = () async {
      await colorStreamControll.close();
    };
  }

  StreamController<Color> colorStreamControll = StreamController();

  @override
  Stream<Color> get getColorStream => colorStreamControll.stream;
}
