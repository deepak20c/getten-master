import 'package:flutter/material.dart';
import 'package:getten/screens/plan-subscription/component/body.dart';
import 'package:getten/widget/custom_appbar_widget.dart';

class PlanSubcriptionScreen extends StatelessWidget {
  const PlanSubcriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        text: 'Buy Plan',
        isLeading: true,
        isTrailing: false,
      ),
      body: BodyPlanSubcriptionScreen(),
    );
  }
}
