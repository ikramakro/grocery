import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  String _userName = '';
  String get userName => _userName;

  UserProvider() {
    _fetchUserName();
  }

  Future<void> _fetchUserName() async {
    try {
      // Get the current user ID
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        String userId = user.uid;

        // Fetch the user document from Firestore
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('Users')
            .doc(userId)
            .get();

        if (userDoc.exists) {
          _userName = userDoc['name'] ??
              'User'; // Default to 'User' if name is not found
          notifyListeners(); // Notify listeners about the change
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching user name: $e');
      }
    }
  }
}
