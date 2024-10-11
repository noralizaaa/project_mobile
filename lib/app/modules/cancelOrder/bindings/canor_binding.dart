import 'package:get/get.dart';
import 'package:tugassssss/app/modules/cancelOrder/controllers/canor_controller.dart';

class CanorBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CanorController>(() => CanorController());
  }
}
