import 'package:get/get.dart';
import 'package:tugassssss/app/modules/cancelled/controllers/cancelled_controller.dart';


class CancelledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CancelledController>(() => CancelledController());
  }
}
