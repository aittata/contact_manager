import 'package:contact_manager/app/modules/initial/providers/initial_provider.dart';
import 'package:get/get.dart';

class InitialController extends GetxController {
  final InitialProvider _provider = Get.put(InitialProvider());

  @override
  void onInit() {
    super.onInit();
    loadContacts;
  }

  get loadContacts async {
    var data = await _provider.getContacts;
    print(data);
  }
}
