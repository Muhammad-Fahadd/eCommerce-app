import 'package:get/get.dart';
import 'package:shoe_app/utilities/helpers/network_manager.dart';

class GeneralBindings extends Bindings{
  
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}