import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String bloodGroup;
  final String phone;
  final String address;
  final String lastDonated;

  User(
      {required this.id,
      required this.name,
      required this.bloodGroup,
      required this.address,
      required this.lastDonated,
      required this.phone});
}

class DonorsPage extends StatefulWidget {
  const DonorsPage({super.key, required this.bloodGroup});
  final bloodGroup;

  @override
  State<DonorsPage> createState() => _DonorsPageState();
}

class _DonorsPageState extends State<DonorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users with Blood Group ${widget.bloodGroup}'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .where('bloodGroup', isEqualTo: widget.bloodGroup)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          List<User> bloodGroupUsers = snapshot.data!.docs.map((doc) {
            Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
            return User(
                lastDonated: data['lastBloodDonated'],
                id: doc.id,
                name: data['name'],
                bloodGroup: data['bloodGroup'],
                phone: data['phoneNo'],
                address: data['address']);
          }).toList();

          return ListView.builder(
            itemCount: bloodGroupUsers.length,
            itemBuilder: (context, index) {
              return ExpansionTile(
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                childrenPadding: EdgeInsets.all(8),
                title: Text(bloodGroupUsers[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Blood Group: ${bloodGroupUsers[index].bloodGroup}'),
                    Text('Last Donated: ${bloodGroupUsers[index].lastDonated}')
                  ],
                ),
                children: [
                  Text('Address: ${bloodGroupUsers[index].address}'),
                  Text(
                    'Phone: ${bloodGroupUsers[index].phone}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
