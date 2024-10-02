import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // Change Row to Column
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the items vertically
          children: [
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: const Text("L O G O U T"),
              onTap: () {
                logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
