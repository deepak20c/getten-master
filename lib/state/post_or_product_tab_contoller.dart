import 'package:get/get.dart';

class CreateBusinessorCustomerController extends GetxController {
  var isCustomerSelected = true.obs;

  void selectPost() {
    isCustomerSelected.value = true;
  }

  void selectProduct() {
    isCustomerSelected.value = false;
  }
}
