import 'package:flutter/material.dart';
import 'package:getten/screens/qr/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/widget/custom_appbar_widget.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        text: 'QR Code',
        isTrailing: false,
      ),
      body: BodyQRScreen(),
    );
  }
}
