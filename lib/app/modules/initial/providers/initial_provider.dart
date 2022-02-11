import 'package:get/get.dart';

class InitialProvider extends GetConnect {
  @override
  void onInit() {}

  get _getPermission async {
    // PermissionStatus permissionStatus = await Permission.contacts.status;
    // if (!permissionStatus.isGranted && !permissionStatus.isPermanentlyDenied) {
    //   permissionStatus = await Permission.contacts.request();
    // }
    // return permissionStatus;
  }

  get getContacts async {
    // final PermissionStatus permissionStatus = await _getPermission;
    // if (permissionStatus.isGranted) {
    //   final Iterable<Contact> contacts = await ContactsService.getContacts();
    //   return contacts;
    // }
  }
}
