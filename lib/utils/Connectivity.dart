import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class ConnectivityController extends GetxController {
  bool _isConnected = false;

  Logger log = Logger();

  Future<bool> checkInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {
        _isConnected = true;
        return true;
      }
    } on SocketException catch (err) {
      _isConnected = false;

      if (kDebugMode) {
        log.v(err);
      }

      return false;
    }
    update();
  }
}
