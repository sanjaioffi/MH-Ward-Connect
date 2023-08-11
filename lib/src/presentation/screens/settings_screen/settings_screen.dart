import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/presentation/screens/sign_in/phone.dart';

import '../../../controller/user_controller.dart';
import '../../themes/app_colors.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String selectedLanguage = "English"; // Default language
  String selectedTheme = "Light"; // Default theme
  // String bloodGroup = "";
  // String address = "";
  // String phoneNumber = "";

  List<String> languages = ["English", "தமிழ்"]; // Add more languages if needed
  List<String> themes = ["Light", "Dark"]; // Add more themes if needed
  // final AuthController _authController = Get.find();
  String userId = Get.find<AuthController>().uid!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: getUserDetailsStream(userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error fetching data'),
            );
          } else {
            if (snapshot.hasData) {
              var userDetails = snapshot.data!.data();

              String name = userDetails!['name'] ?? '';
              String address = userDetails['address'] ?? '';
              String dob = userDetails['dob'] ?? '';
              String bloodGroup = userDetails['bloodGroup'] ?? '';
              String lastBloodDonated = userDetails['lastBloodDonated'] ?? '';
              String phoneNumber =
                  Get.find<AuthController>().uid!;

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("Language"),
                      trailing: DropdownButton<String>(
                        value: selectedLanguage,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedLanguage = newValue!;
                          });
                        },
                        items: languages
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Theme"),
                      trailing: DropdownButton<String>(
                        value: selectedTheme,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedTheme = newValue!;
                          });
                        },
                        items: themes
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Center(
                          child: Text(
                        "Edit Emergency Details",
                        style: TextStyle(color: Colors.red),
                      )),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Name"),
                      subtitle: Text(name),
                      onTap: () {
                        _showInputDialog("Name", name, (newValue) {
                          _showInputDialog("Phone Number", phoneNumber,
                              (newValue) async {
                            final CollectionReference _usersCollection =
                                FirebaseFirestore.instance.collection('users');
                            try {
                              await _usersCollection.doc(userId).update({
                                'name': newValue,
                              });
                            } catch (e) {
                              print('Error updating emergency details: $e');
                            }
                          });
                        });
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Blood Group"),
                      subtitle: Text(bloodGroup),
                      onTap: () {
                        _showInputDialog("Blood Group", bloodGroup, (newValue) {
                          setState(() {
                            bloodGroup = newValue;
                          });
                        });
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Last Blood Donated"),
                      subtitle: Text(lastBloodDonated),
                      onTap: () {
                        _showInputDialog("Last Blood Donated", lastBloodDonated,
                            (newValue) {
                          setState(() {
                            lastBloodDonated = newValue;
                          });
                        });
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Address"),
                      subtitle: Text(address),
                      onTap: () {
                        _showInputDialog("Address", address, (newValue) {
                          setState(() {
                            address = newValue;
                          });
                        });
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Phone Number"),
                      subtitle: Text(phoneNumber),
                      onTap: () {},
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Privacy Policy"),
                      onTap: () {
                        Get.to(PrivacyPolicyPage());
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        "Logout",
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        Get.to(Login());
                      },
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                child: Text('User not found'),
              );
            }
          }
        },
      ),
    );
  }

  void _showInputDialog(
      String title, String initialValue, Function(String) onSubmitted) {
    showDialog(
      context: context,
      builder: (context) {
        String newValue = initialValue;
        return AlertDialog(
          title: Text(title),
          content: TextFormField(
            initialValue: initialValue,
            onChanged: (value) {
              newValue = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                print('pressed');
                onSubmitted(newValue);
                Navigator.of(context).pop();
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

  // Function to get the user details from Firestore based on the user ID
  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserDetailsStream(
      String userId) {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .snapshots();
  }

  Future<void> saveUserDetails(String userId, String name, String address,
      String age, String blood_group, String lastBloodDonated) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'name': name,
        'address': address,
        'age': age,
        'bloodGroup': blood_group,
        'lastBloodDonated': lastBloodDonated,
        'posts': []
      });
    } catch (e) {
      print('Error saving user details and posts: $e');
      // Handle error
    }
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Introduction",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "We value your privacy and are committed to protecting your personal information...",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            // Add more sections and details of your privacy policy here...
          ],
        ),
      ),
    );
  }
}
