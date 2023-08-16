import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

class EmulatorData extends StatefulWidget {
  const EmulatorData({super.key});

  @override
  State<EmulatorData> createState() => _EmulatorDataState();
}

class _EmulatorDataState extends State<EmulatorData> {
  List<String> emData = [];

  @override
  void initState() {
    super.initState();
    _getEmData();
  }

  Future<void> _getEmData() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      emData.add('Device: ${androidInfo.device}');
      emData.add('Model: ${androidInfo.model}');
      emData.add('Manufacturer: ${androidInfo.manufacturer}');
      emData.add('Android Version: ${androidInfo.version.release}');
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      emData.add('Device: ${iosInfo.utsname.machine}');
      emData.add('Model: ${iosInfo.model}');
      emData.add('System Name: ${iosInfo.systemName}');
      emData.add('System Version: ${iosInfo.systemVersion}');
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data of the emulator device'),
      ),
      body: ListView.builder(
          itemCount: emData.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(emData[index]),
            );
          }),
    );
  }
}
