import 'dart:typed_data';

class Contacts {
  final String? id;
  final String? name;
  final String? phone;
  final String? email;
  final Uint8List? photo;

  Contacts({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.photo,
  });
}

/*
class ContactModel {
  String contactId;
  String contactName;
  String contactPhone;
  String contactEmail;
  String ownerId;
  bool isChecked;
  Iterable<Item> phones = [];
  Iterable<Item> emails = [];
  Uint8List avatar;

  ContactModel({
    this.contactId,
    this.contactName,
    this.contactPhone,
    this.contactEmail,
    this.ownerId,
    this.isChecked = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'contactId': contactId,
      'contactName': contactName,
      'contactEmail': contactEmail,
      'contactPhone': contactPhone,
      'ownerId': ownerId,
    };
  }

  static ContactModel fromData(Map<String, dynamic> data) {
    if (data == null) return null;
    return ContactModel(
      contactId: data['contactId'],
      contactName: data['contactName'],
      contactPhone: data['contactPhone'],
      isChecked: data['isChecked'],
      // id:uid
    );
  }
}
*/
