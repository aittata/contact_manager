import 'package:get/get.dart';

import '../controllers/initial_controller.dart';
import '../providers/initial_provider.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitialProvider>(() => InitialProvider());
    Get.lazyPut<InitialController>(() => InitialController());
  }
}
