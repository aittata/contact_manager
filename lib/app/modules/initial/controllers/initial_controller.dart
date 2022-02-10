import 'package:contact_manager/app/modules/initial/providers/initial_provider.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:get/get.dart';

class InitialController extends GetxController {
  final InitialProvider _provider = Get.put(InitialProvider());
  var contacts = <Contact>[].obs;
  var state = false.obs;

  @override
  void onInit() {
    super.onInit();
    _getContacts;
  }

  get _getContacts async {
    state.value = true;
    contacts = await _provider.getContacts;
    state.value = false;
  }
}
