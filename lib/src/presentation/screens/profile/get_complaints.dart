import 'package:cloud_firestore/cloud_firestore.dart';

returnStatus(
  String docId,
) async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  try {
    // Get a reference to the document you want to fetch
    DocumentReference docRef = firestore.collection('issues').doc(docId);

    // Retrieve the document snapshot
    DocumentSnapshot docSnapshot = await docRef.get();

    if (docSnapshot.exists) {
      dynamic fieldValue = docSnapshot.get('status');
      print(
        fieldValue.toString(),
      );
      return fieldValue;
    } else {}
  } catch (e) {
    return false;
  }
}
