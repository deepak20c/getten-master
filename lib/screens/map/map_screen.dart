import 'package:flutter/material.dart';
import 'package:getten/screens/map/component/body.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyMapScreen(),
    );
  }
}
