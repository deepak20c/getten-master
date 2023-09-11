import 'package:flutter/material.dart';
import 'package:getten/screens/profile/component/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyProfileScreen(),
    );
  }
}
