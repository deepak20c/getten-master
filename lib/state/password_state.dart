import 'package:get/get.dart';

class PasswordVisibilityController extends GetxController {
  final RxBool _isVisible = false.obs;

  bool get isVisible => _isVisible.value;

  void toggleVisibility() {
    _isVisible.toggle();
  }
}
