import 'package:get/get.dart';
import 'package:tugassssss/app/modules/CancelValid/controllers/cancelvalid_controller.dart';

class CancelValidBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CancelValidController>(() => CancelValidController());
  }
}
