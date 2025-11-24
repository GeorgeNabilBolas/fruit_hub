import 'package:flutter/material.dart';

import 'login_view.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginView(),
      ),
    );
  }
}
