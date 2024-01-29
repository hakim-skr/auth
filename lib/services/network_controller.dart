import 'dart:async';
import 'package:auth_app/common/popups/snack_bar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  static NetworkController get instance => Get.find();
  
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectivityStatus =
      ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    _initialNetworkCheck();
  }

  void _initialNetworkCheck() async {
    var initialStatus = await _connectivity.checkConnectivity();
    _updateConnectionStatus(initialStatus);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) async {
    _connectivityStatus.value = connectivityResult;
    if (_connectivityStatus.value == ConnectivityResult.none) {
      print("connected :  ${_connectivityStatus.value}");
      MySnackBar.connectionSnackBar();
    } else {
      print("else connected :  ${_connectivityStatus.value}");
      if (Get.isSnackbarOpen) {
        await Get.closeCurrentSnackbar();
      }
    }
  }

  Future<bool> isConected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) return false;
      return true;
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
