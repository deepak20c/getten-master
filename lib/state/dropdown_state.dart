import 'package:get/get.dart';

class DropdownController extends GetxController {
  final RxString selectedValue = "".obs;

  // Initialize the controller with an initial value
  DropdownController({required String initialValue}) {
    selectedValue.value = initialValue;
  }

  void updateSelectedValue(String newValue) {
    selectedValue.value = newValue;
  }
}
