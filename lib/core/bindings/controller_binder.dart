import 'package:design_doctor/features/whats_app/controllers/whats_app_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut(() => WhatsAppController(), fenix: true);

  }
}