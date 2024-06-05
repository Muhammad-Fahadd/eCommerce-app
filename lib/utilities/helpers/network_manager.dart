import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:shoe_app/utilities/popups/loaders.dart';


///manages network connectivity status and provide method to check and handle connectivity changes

class NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

///update a connectivity status based on connectivity changes and show a relevant popup for no internet connection
  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    _connectionStatus = result;
    if (_connectionStatus == ConnectivityResult.none) {
      ELoaders.warningSnackBar(title: 'No internet connection');
    }
  }


///Check the internet connection status
  ///return true if connected false otherwise
    Future<bool> isConnected()async {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        ELoaders.warningSnackBar(title: 'No internet connection');
        return false;
      } else {
        return true;
      }
    }

    ///dispose or close active connectivity stream
    @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }

}





