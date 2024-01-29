import 'package:get/get.dart';
import 'package:latihan_local_database/pages/create/controller.dart';


class CreateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateController());
  }
}