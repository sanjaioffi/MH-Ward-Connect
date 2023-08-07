import 'dart:convert';

class Councillor {
  int wardNo;
  String name;
  String address;
  String contactNo;
  String emailId;
  String additionalResponsibility;
  String partyName;
  String photoUrl;

  Councillor({
    required this.wardNo,
    required this.name,
    required this.address,
    required this.contactNo,
    required this.emailId,
    required this.additionalResponsibility,
    required this.partyName,
    required this.photoUrl,
  });
}

List<Councillor> data = [
  Councillor(wardNo: 1,
        name: 'John Doe',
        address: '123 Main St',
        contactNo: '1234567890',
        emailId: 'john.doe@example.com',
        additionalResponsibility:' Chairperson',
        partyName: 'Example Party',
        photoUrl: 'https://example.com/john_doe_photo.jpg'),
        Councillor(wardNo: 2,
        name: 'John Doe',
        address: '123 Main St',
        contactNo: '1234567890',
        emailId: 'john.doe@example.com',
        additionalResponsibility:' Chairperson',
        partyName: 'Example Party',
        photoUrl: 'https://example.com/john_doe_photo.jpg')
];
