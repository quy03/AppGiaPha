import 'package:application_gia_pha/auth/login_or_resgister.dart';
import 'package:application_gia_pha/screen/body_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return const BodyScreen();
          }
          // user is Not logged in
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
