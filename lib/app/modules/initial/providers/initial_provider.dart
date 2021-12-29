import 'package:get/get.dart';

class InitialProvider extends GetConnect {
  @override
  void onInit() {}

  get getContacts async {
    // var data = await ContactsService.getContacts();
    // print(data);
    // bool isContactsGranted = await Permission.contacts.request().isGranted;
    try {
      //if (isContactsGranted) {
      //List<Contact> _contactsList = (await ContactsService.getContacts()).toList();
      //print(_contactsList);
      //contactsList = _contactsList;

      //}
    } catch (e) {
      throw Exception("Something went Wrong");
    }
  }
}
